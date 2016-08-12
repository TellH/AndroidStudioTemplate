package ${packageName};

import android.util.SparseArray;

public class BasePresenter<T extends BaseView> implements MvpPresenter<T> {

    private T view;

    protected SparseArray<UseCase> useCases = new SparseArray<>();

    @Override
    public void attachView(T mvpView) {
        view = mvpView;
    }

    @Override
    public void detachView() {
        view = null;
        unsubscribeAll();
        useCases.clear();
    }

    protected void unsubscribe(int key) {
        useCases.get(key).unsubscribe();
    }

    protected void unsubscribeAll() {
        for (int i = 0; i < useCases.size(); i++) {
            useCases.valueAt(i).unsubscribe();
        }
    }

    public T getView() {
        return view;
    }

    public void checkViewAttached() {
        if (!isViewAttached()) {
            throw new MvpViewNotAttachedException();
        }
    }

    public boolean isViewAttached() {
        return view != null;
    }

    public void registerUserCase(int key, UseCase useCase) {
        this.useCases.put(key, useCase);
    }

    public static class MvpViewNotAttachedException extends RuntimeException {
        public MvpViewNotAttachedException() {
            super("Please call Presenter.attachView(BaseView) before" + " requesting data to the Presenter");
        }
    }
}
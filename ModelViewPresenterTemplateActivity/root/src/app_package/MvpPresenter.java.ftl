package ${packageName};

public interface MvpPresenter<V extends BaseView> {
    void attachView(V view);
    void detachView();
}
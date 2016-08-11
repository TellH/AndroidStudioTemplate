package ${packageName};

import rx.Subscription;
import rx.subscriptions.CompositeSubscription;

public class BasePresenter<T extends BaseView> implements MvpPresenter<T> {

      private T view;

      private CompositeSubscription compositeSubscription = new CompositeSubscription();//RxJava

      @Override
      public void attachView(T mvpView) {
          view = mvpView;
      }

      @Override
      public void detachView() {
          view = null;
          compositeSubscription.unsubscribe();
          compositeSubscription.clear();
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

      public void addSubscription(Subscription subscription) {
          this.compositeSubscription.add(subscription);
      }

      public static class MvpViewNotAttachedException extends RuntimeException {
          public MvpViewNotAttachedException() {
              super("Please call Presenter.attachView(BaseView) before" + " requesting data to the Presenter");
          }
      }
  }
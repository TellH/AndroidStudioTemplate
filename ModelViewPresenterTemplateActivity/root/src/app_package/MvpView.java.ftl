package ${packageName};


public class ${className}Activity extends BaseActivity implements ${className}Contract.View {
	${className}Contract.Presenter presenter;
	
    @Override
    protected void initData(Bundle savedInstanceState) {
        presenter = new MvpFunctionPresenter();
        presenter.attachView(this);
    }

    @Override
    protected void initView() {

    }

    @Override
    protected int getLayoutId() {
        return R.layout.activity_${className};
    }
 
    @Override
    protected void onDestroy() {
        super.onDestroy();
        presenter.detachView();
    }
}
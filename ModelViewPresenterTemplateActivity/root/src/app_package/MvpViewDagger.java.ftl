package ${packageName};

public class ${className}Activity extends BaseActivity implements ${className}Contract.View {
	@Inject
	${className}Contract.Presenter presenter;
	
    @Override
    protected void initData(Bundle savedInstanceState) {
        initDagger();
    }

    @Override
    protected void initView() {

    }

    @Override
    protected int getLayoutId() {
        return 0;
    }
	private void initDagger(){
		Dagger${className}Component.builder()
			.build().inject(this);
        presenter.attachView(this);
	}
	
    @Override
    protected void onDestroy() {
        super.onDestroy();
        presenter.detachView();
    }
}
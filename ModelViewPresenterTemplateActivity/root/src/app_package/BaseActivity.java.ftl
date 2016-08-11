package ${packageName};

import android.support.v7.app.AppCompatActivity;

public class BaseActivity extends AppCompatActivity implements BaseView{

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(getLayoutId());
        initView();
        initData(savedInstanceState);
    }

    protected abstract void initData(Bundle savedInstanceState);

    protected abstract void initView();

    protected abstract int getLayoutId();
	
    @Override
    public void showOnError(String s) {

    }

    @Override
    public void showOnLoading() {

    }

    @Override
    public void showOnSuccess() {

    }
}

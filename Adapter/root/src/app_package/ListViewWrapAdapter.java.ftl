package ${packageName};
import android.content.Context;
import android.view.View;

import com.tellh.androidlibraryarchitecturedemo.R;

import java.util.List;

public class ${adapterName}Adapter extends BaseListViewAdapter<${itemType}, ${adapterName}Adapter.ViewHolder> {

    public ${adapterName}Adapter(Context context, List<${itemType}> items) {
        super(context, items);
    }

    @Override
    protected ViewHolder onCreateViewHolder(View view) {
        return new ViewHolder(view);
    }

    @Override
    protected int getLayoutId() {
        return R.layout.${layoutId};
    }

    @Override
    protected void onBindView(int position, ViewHolder holder, ${itemType} item) {
        
    }
    public static class ViewHolder extends BaseListViewAdapter.ViewHolder {
        public ViewHolder(View view) {
            super(view);
        }
    }
}

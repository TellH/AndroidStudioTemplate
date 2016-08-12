package ${packageName};
import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;

import java.util.List;

public class ${adapterName}Adapter extends BaseRecyclerViewAdapter<${adapterName}Adapter.ViewHolder, ${itemType}> {
    public ${adapterName}Adapter(List<${itemType}> items, Context context) {
        super(items, context);
    }

    @Override
    protected int getItemLayoutId() {
        return R.layout.${layoutId};
    }

    @Override
    protected ViewHolder provideViewHolder(View v) {
        return new ViewHolder(v);
    }

    @Override
    protected void onBindView(ViewHolder holder, int position, ${itemType} item) {
        //// TODO: to bind view 
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        public View rootView;

        public ViewHolder(View itemView) {
            super(itemView);
            this.rootView = itemView;
        }
    }
}

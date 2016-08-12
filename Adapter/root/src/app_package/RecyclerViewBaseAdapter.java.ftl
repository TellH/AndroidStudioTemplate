package ${packageName};
import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import java.util.List;

public abstract class BaseRecyclerViewAdapter<ViewHolder extends RecyclerView.ViewHolder,DataBean> extends RecyclerView.Adapter<ViewHolder> {
    private final Context context;
    private List<DataBean> items;

    public BaseRecyclerViewAdapter(List<DataBean> items, Context context) {
        this.items = items;
        this.context = context;
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup parent,
                                                   int viewType) {
        View v = LayoutInflater.from(parent.getContext())
                .inflate(getItemLayoutId(), parent, false);
        return provideViewHolder(v);
    }

    protected abstract int getItemLayoutId();

    protected abstract ViewHolder provideViewHolder(View v) ;

    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        DataBean item = items.get(position);
        onBindView(holder,position,item);
    }

    protected abstract void onBindView(ViewHolder holder, int position, DataBean item);

    @Override
    public int getItemCount() {
        if (items == null) {
            return 0;
        }
        return items.size();
    }
}
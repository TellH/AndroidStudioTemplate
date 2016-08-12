package ${packageName};

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

import java.util.Collections;
import java.util.List;

public abstract class BaseListViewAdapter<T,VH extends BaseListViewAdapter.ViewHolder> extends BaseAdapter {
    private final Context context;
    private List<T> items;
    private LayoutInflater layoutInflater;

    public BaseListViewAdapter(Context context, List<T> items) {
        this.context = context;
        if (items == null)
            items = Collections.emptyList();
        this.items = items;
        layoutInflater = LayoutInflater.from(context);
    }

    @Override
    public int getCount() {
        if (items == null) {
            return 0;
        }
        return items.size();
    }

    @Override
    public Object getItem(int position) {
        return items.get(position);
    }

    @Override
    public long getItemId(int position) {
        return getLayoutId();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        final VH holder;
        View view;
        if (convertView == null) {
            view = layoutInflater.inflate(getLayoutId(), parent, false);
            holder = onCreateViewHolder(view);
            view.setTag(holder);
        } else {
            view = convertView;
            holder = (VH) view.getTag();
        }
        onBindView(position, holder, items.get(position));
        return view;
    }

    protected abstract VH onCreateViewHolder(View view);

    protected abstract int getLayoutId() ;

    protected abstract void onBindView(int position, VH holder, T item);

    public static class ViewHolder {
        public View rootView;

        public ViewHolder(View rootView) {
            this.rootView = rootView;
        }
    }
}

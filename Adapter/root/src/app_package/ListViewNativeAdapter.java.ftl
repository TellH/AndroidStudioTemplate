package ${packageName};

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.Collections;
import java.util.List;

public class ${adapterName}Adapter extends BaseAdapter {
    private final Context context;
    private List<${itemType}> items;
    private LayoutInflater layoutInflater;

    public ${adapterName}Adapter (Context context, List<${itemType}> items) {
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
        return R.layout.${layoutId};
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        final ViewHolder holder;
        View view;
        if (convertView == null) {
            view = layoutInflater.inflate(R.layout.${layoutId}, parent, false);
            holder = new ViewHolder(view);
            view.setTag(holder);
        } else {
            view = convertView;
            holder = (ViewHolder) view.getTag();
        }
        onBindView(position, holder, items.get(position));
        return view;
    }

    private void onBindView(int position, ViewHolder holder, ${itemType} item) {

    }

    public static class ViewHolder {
        public View rootView;

        public ViewHolder(View rootView) {
            this.rootView = rootView;
        }
    }
}

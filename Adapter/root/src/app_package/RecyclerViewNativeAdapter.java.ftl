package ${packageName};

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class ${adapterName}Adapter extends RecyclerView.Adapter<${adapterName}Adapter.ViewHolder> {
    private final Context context;
    private List<${itemType}> items;
   
    public ${adapterName}Adapter(List<${itemType}> items, Context context) {
        this.items = items;
        this.context = context;
    }

    @Override
    public ${adapterName}Adapter.ViewHolder onCreateViewHolder(ViewGroup parent,
                                             int viewType) {
        View v = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.${layoutId}, parent, false);
        return new ${adapterName}Adapter.ViewHolder(v);
    }

    @Override
    public void onBindViewHolder(${adapterName}Adapter.ViewHolder holder, int position) {
        ${itemType} item = items.get(position);
        //TODO Fill in your logic for binding the view.
    }

    @Override
    public int getItemCount() {
        if (items == null){
            return 0;
        }
        return items.size();
    }
    public static class ViewHolder extends RecyclerView.ViewHolder{
    public View rootView;
    public ViewHolder(View rootView) {
            super(rootView);
            this.rootView = rootView;
        }
    }
}
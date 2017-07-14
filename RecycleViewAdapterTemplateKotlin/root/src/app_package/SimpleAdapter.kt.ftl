package ${packageName}

import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${adapterName}(var entities: List<${entityClass}> <#if isClickable>, val onClickEvent:(${entityClass})->Unit </#if>): RecyclerView.Adapter<${adapterName}.${adapterTagName}ViewHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup?, viewType: Int): ${adapterTagName}ViewHolder {
        return ${adapterTagName}ViewHolder(LayoutInflater.from(parent!!.context).inflate(R.layout.${adapterLayoutName}, parent, false))
    }

    override fun getItemCount(): Int = entities.size

    override fun onBindViewHolder(holder: ${adapterTagName}ViewHolder?, position: Int) {
        holder!!.onBindViewHolder(entities[position])
    }

    inner class ${adapterTagName}ViewHolder(itemView: View?) : RecyclerView.ViewHolder(itemView) {

        fun onBindViewHolder(entity: ${entityClass}) {
            <#if isClickable>
            itemView.setOnClickListener { onClickEvent(entity) }
            </#if>
        }
    }
}

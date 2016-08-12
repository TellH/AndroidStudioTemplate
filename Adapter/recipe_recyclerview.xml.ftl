<recipe>
	<#if rvNative>
		<instantiate from="root/src/app_package/RecyclerViewNativeAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.java" />
	</#if>
	<#if rvWrap>
		<instantiate from="root/src/app_package/RecyclerViewWrapAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.java" />
		<#if rvWithBase>
			<instantiate from="root/src/app_package/RecyclerViewBaseAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseRcyclerViewAdapter.java" />
		</#if>
	</#if>
</recipe>
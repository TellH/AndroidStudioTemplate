<recipe>
	<#if lvNative>
		<instantiate from="root/src/app_package/ListViewNativeAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.java" />
	</#if>
	<#if lvWrap>
		<instantiate from="root/src/app_package/ListViewWrapAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.java" />
		<#if lvWithBase>
			<instantiate from="root/src/app_package/ListViewBaseAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseListViewAdapter.java" />
		</#if>
	</#if>
</recipe>
<?xml version="1.0"?>
<recipe>
	<#if forListView>
		<#include "recipe_listview.xml.ftl" />
	</#if>
	<#if forRecyclerView>
		<#include "recipe_recyclerview.xml.ftl" />
	</#if>
    <open file="${escapeXmlAttribute(srcOut)}/${adapterName}Adapter.java" />
</recipe>

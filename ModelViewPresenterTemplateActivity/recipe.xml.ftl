<?xml version="1.0"?>
<recipe>

	<#if createBase>
		<#include "recipe_base.xml.ftl" />
	</#if>
	<#if useDagger>
		<#include "recipe_dagger.xml.ftl" />
	<#else>
	<instantiate from="src/app_package/MvpView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.java" />
	</#if>
	<instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Contract.java" />

	<instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.java" />


	<open file="${srcOut}/${className}Contract.java"/>
</recipe>
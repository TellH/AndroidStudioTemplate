<recipe>
    <instantiate from="src/app_package/DaggerComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Component.java" />
    <instantiate from="src/app_package/DaggerModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Module.java" />	   
	<instantiate from="src/app_package/MvpViewDagger.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.java" />
</recipe>
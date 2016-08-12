<recipe>
	<instantiate from="src/app_package/MvpPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/MvpPresenter.java" />
	<instantiate from="src/app_package/BaseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseView.java" />
	<instantiate from="src/app_package/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />
	<instantiate from="src/app_package/BaseActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseActivity.java" />
	<instantiate from="src/app_package/UseCase.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/UseCase.java" />
</recipe>
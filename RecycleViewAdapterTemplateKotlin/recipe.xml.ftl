<?xml version="1.0"?>
<recipe>
    <instantiate from="root/src/app_package/SimpleAdapter.kt.ftl"
                  to="${escapeXmlAttribute(srcOutKotlin)}/${adapterName}.kt" />
    <instantiate from="root/res/layout/adapter_simple.xml.ftl"
                  to="${escapeXmlAttribute(resOut)}/layout/${adapterLayoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOutKotlin)}/${adapterName}.kt" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${adapterLayoutName}.xml" />
</recipe>

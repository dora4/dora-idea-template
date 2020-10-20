<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />
    <dependency mavenUrl="com.github.dora4:dora:1.0.0" />

<#if generateLayout || (includeCppSupport!false)>
<instantiate from="root/res/layout/activity_mvvm.xml"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if includeCppSupport!false>
    <instantiate from="root/src/app_package/MVVMActivityWithCppSupport.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />

    <mkdir at="${escapeXmlAttribute(nativeSrcOut)}" />
    
    <instantiate from="root/src/app_package/native-lib.cpp.ftl"
                   to="${escapeXmlAttribute(nativeSrcOut)}/native-lib.cpp" />
<#else>
    <instantiate from="root/src/app_package/MVVMActivity.${ktOrJavaExt}.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
</#if>
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
</recipe>

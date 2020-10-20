package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

import dora.BaseFragment

class ${fragmentClass} : BaseFragment<>() {

override fun getLayoutId(): Int {
<#if generateLayout>
    return R.layout.${fragmentName}
</#if>
}

override fun initData(savedInstanceState: Bundle?) {

}
}
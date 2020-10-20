package ${packageName};

import android.os.Bundle;
import dora.BaseFragment;

public class ${fragmentClass} extends BaseFragment<> {

    @Override
    protected int getLayoutId() {
<#if generateLayout>
        return R.layout.${fragmentName};
</#if>
    }

    @Override
    public void initData(Bundle savedInstanceState) {
    
    }
}

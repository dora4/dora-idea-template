package ${packageName};

import android.os.Bundle;
import dora.BaseActivity;

public class ${activityClass} extends BaseActivity<> {

    @Override
    protected int getLayoutId() {
<#if generateLayout>
        return R.layout.${layoutName};
</#if>
    }

    @Override
    public void initData(Bundle savedInstanceState) {
    
    }
}

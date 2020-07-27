package org.activiti.examples;

import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.JavaDelegate;

/**
 * <b>JavaDelegate测试类</b>
 *
 * @author 11114396 lvyongwen
 * @date 2020-07-23 12:26
 * @since 1.0
 */
public class JavaDelegateTest implements JavaDelegate {
    @Override
    public void execute(DelegateExecution execution) {
        System.out.println("JavaDelegateTest.execute!");
    }
}

package org.activiti.examples;

import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.ExecutionListener;

/**
 * <b>ExecutionListener测试类</b>
 *
 * @author 11114396 lvyongwen
 * @date 2020-07-23 12:33
 * @since 1.0
 */
public class ExecutionListenerTest implements ExecutionListener {
    @Override
    public void notify(DelegateExecution execution) {
        System.out.println("ExecutionListenerTest.notify!");
    }
}

package org.activiti.examples;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;

/**
 * <b>TaskListener测试类</b>
 *
 * @author 11114396 lvyongwen
 * @date 2020-07-23 12:31
 * @since 1.0
 */
public class TaskListenerTest implements TaskListener {
    @Override
    public void notify(DelegateTask delegateTask) {
        System.out.println("TaskListenerTest.notify!");
    }
}

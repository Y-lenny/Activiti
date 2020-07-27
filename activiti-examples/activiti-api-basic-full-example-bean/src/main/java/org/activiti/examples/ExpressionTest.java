package org.activiti.examples;

import org.activiti.engine.delegate.Expression;
import org.activiti.engine.delegate.VariableScope;
import org.activiti.engine.impl.el.ExpressionManager;
import org.activiti.engine.impl.interceptor.DelegateInterceptor;

import java.util.Map;

/**
 * <b>Expression测试类</b>
 *
 * @author 11114396 lvyongwen
 * @date 2020-07-23 12:34
 * @since 1.0
 */
public class ExpressionTest implements Expression {
    @Override
    public Object getValue(VariableScope variableScope) {
        return null;
    }

    @Override
    public void setValue(Object value, VariableScope variableScope) {

    }

    @Override
    public String getExpressionText() {
        return null;
    }

    @Override
    public Object getValue(ExpressionManager expressionManager, DelegateInterceptor delegateInterceptor, Map<String, Object> availableVariables) {
        return null;
    }
}

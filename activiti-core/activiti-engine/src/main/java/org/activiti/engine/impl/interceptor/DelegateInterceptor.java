/* Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.activiti.engine.impl.interceptor;

import org.activiti.engine.api.internal.Internal;
import org.activiti.engine.impl.delegate.invocation.DelegateInvocation;

/**
 * Interceptor responsible for handling calls to 'user code'. User code represents external Java code (e.g. services and listeners) invoked by activiti. The following is a list of classes that
 * 拦截器负责调用"用户代码"。用户代码意思是被activities调用的拓展代码；下面的接口实现就代表用户代码
 * represent user code:
 * <ul>
 * <li>{@link org.activiti.engine.delegate.JavaDelegate}</li>
 * <li>{@link org.activiti.engine.delegate.ExecutionListener}</li>
 * <li>{@link org.activiti.engine.delegate.Expression}</li>
 * <li>{@link org.activiti.engine.delegate.TaskListener}</li>
 * </ul>
 *
 * The interceptor is passed in an instance of {@link DelegateInvocation}. Implementations are responsible for calling {@link DelegateInvocation#proceed()}.
 * 拦截器在{@link DelegateInvocation}实例中传递，实现类会调用 {@link DelegateInvocation#proceed()}。
 */
@Internal
public interface DelegateInterceptor {

  public void handleInvocation(DelegateInvocation invocation);

}

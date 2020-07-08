-- -------------------Activiti组件表定义---------------------------
-- 通用数据表
SELECT * FROM ACT_GE_BYTEARRAY t1; -- 通用字节资源表
SELECT * FROM ACT_GE_PROPERTY; -- 通用属性表，可以生成部署id

-- 资源库流程规则表
SELECT * FROM ACT_RE_DEPLOYMENT t1; -- 部署表
SELECT * FROM ACT_RE_MODEL t1 ; -- 流程模型(bpmn 模型)
SELECT * FROM ACT_RE_PROCDEF t1 ; -- 流程定义表(bpmn 定义，由模型转化过来)

-- 运行时数据库表
SELECT * FROM ACT_RU_EXECUTION; -- 运行时流程执行实例表
SELECT * FROM ACT_RU_IDENTITYLINK; -- 运行时流程人员表（主要存储任务节点与参与者的相关信息 ）
SELECT * FROM ACT_RU_TASK; -- 运行时任务节点表
SELECT * FROM ACT_RU_VARIABLE; -- 运行时流程变量数据表
select * from ACT_RU_JOB; -- 定时任务

-- 历史数据库表
SELECT * FROM ACT_HI_PROCINST; -- 历史流程实例表
SELECT * FROM ACT_HI_ACTINST; -- 历史节点表
SELECT * FROM ACT_HI_TASKINST; -- 历史流程任务表
SELECT * FROM ACT_HI_VARINST; -- 历史流程变量表
SELECT * FROM ACT_HI_IDENTITYLINK; -- 历史流程人员表（主要存储任务节点与参与者的相关信息 ）
SELECT * FROM ACT_HI_DETAIL; -- 历史详情表，提供历史变量的查询

















-- 删除activiti库所有表
-- select concat("DROP TABLE IF EXISTS ", table_name, ";") from information_schema.tables where table_schema="activiti";

-- DROP TABLE IF EXISTS act_evt_log;
-- DROP TABLE IF EXISTS act_ge_bytearray;
-- DROP TABLE IF EXISTS act_ge_property;
-- DROP TABLE IF EXISTS act_hi_actinst;
-- DROP TABLE IF EXISTS act_hi_attachment;
-- DROP TABLE IF EXISTS act_hi_comment;
-- DROP TABLE IF EXISTS act_hi_detail;
-- DROP TABLE IF EXISTS act_hi_identitylink;
-- DROP TABLE IF EXISTS act_hi_procinst;
-- DROP TABLE IF EXISTS act_hi_taskinst;
-- DROP TABLE IF EXISTS act_hi_varinst;
-- DROP TABLE IF EXISTS act_procdef_info;
-- DROP TABLE IF EXISTS act_re_deployment;
-- DROP TABLE IF EXISTS act_re_model;
-- DROP TABLE IF EXISTS act_re_procdef;
-- DROP TABLE IF EXISTS act_ru_deadletter_job;
-- DROP TABLE IF EXISTS act_ru_event_subscr;
-- DROP TABLE IF EXISTS act_ru_execution;
-- DROP TABLE IF EXISTS act_ru_identitylink;
-- DROP TABLE IF EXISTS act_ru_integration;
-- DROP TABLE IF EXISTS act_ru_job;
-- DROP TABLE IF EXISTS act_ru_suspended_job;
-- DROP TABLE IF EXISTS act_ru_task;
-- DROP TABLE IF EXISTS act_ru_timer_job;
-- DROP TABLE IF EXISTS act_ru_variable;
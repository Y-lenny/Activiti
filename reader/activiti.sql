DROP DATABASE `activiti`;
CREATE DATABASE `activiti`;
use `activiti`;
-- -------------------Activiti组件表定义---------------------------
-- 通用数据表
SELECT * FROM ACT_GE_BYTEARRAY t1; -- 通用字节资源表
SELECT * FROM ACT_GE_PROPERTY; -- 通用属性表，可以生成部署id

-- 资源库流程规则表
SELECT * FROM ACT_RE_DEPLOYMENT t1; -- 部署表
SELECT * FROM ACT_RE_MODEL t1 ; -- 流程模型(bpmn 模型)
SELECT * FROM ACT_RE_PROCDEF t1 ; -- 流程定义表(bpmn 定义，由模型转化过来)

-- 运行时数据库表
SELECT * FROM ACT_RU_EXECUTION t1 ; -- 运行时流程执行实例表
SELECT * FROM ACT_RU_IDENTITYLINK ; -- 运行时流程人员表（主要存储任务节点与参与者的相关信息 ）
SELECT * FROM ACT_RU_TASK t1 ; -- 运行时任务节点表
SELECT * FROM ACT_RU_VARIABLE ; -- 运行时流程变量数据表
select * from ACT_RU_JOB; -- 定时任务

-- 历史数据库表
SELECT * FROM ACT_HI_PROCINST t1 ; -- 历史流程实例表
SELECT * FROM ACT_HI_ACTINST t1 ; -- 历史节点表
SELECT * FROM ACT_HI_TASKINST t1 ; -- 历史流程任务表
SELECT * FROM ACT_HI_VARINST ; -- 历史流程变量表
SELECT * FROM ACT_HI_IDENTITYLINK ; -- 历史流程人员表（主要存储任务节点与参与者的相关信息 ）
SELECT * FROM ACT_HI_DETAIL ; -- 历史详情表，提供历史变量的查询

-- 删除activiti库所有表
-- select concat("DROP TABLE IF EXISTS ", table_name, ";") from information_schema.tables where table_schema="activiti";

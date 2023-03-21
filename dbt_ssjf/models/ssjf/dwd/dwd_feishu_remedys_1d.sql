/*
creator：wenhuaiqing
date：2023-03-13
comment：创建dwd层补卡表
物化模式：表

*/

{{ config(materialized='table') }}

with dwd_feishu_remedys_1d as 
(
    SELECT t1.approval_id, t1.create_time, t1.punch_no, t1.reason, t1.remedy_date, t1.remedy_time, t1.status, t1."time", 
t1.time_zone, t1.update_time, t1.user_id, t1.work_type
,t2.name,t2.email,t2.department,t2.leaderemployee
FROM stg_feishu.stg_feishu_remedys t1
inner join stg_easydo.usertaber t2
on t1.user_id =t2.userid 

)
select * from dwd_feishu_remedys_1d


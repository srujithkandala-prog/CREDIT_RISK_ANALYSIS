# Databricks notebook source
# MAGIC %sql
# MAGIC CREATE SCHEMA IF NOT EXISTS credit_risk_analysis_db.bronze_sch;
# MAGIC
# MAGIC CREATE SCHEMA IF NOT EXISTS credit_risk_analysis_db.silver_sch;
# MAGIC
# MAGIC CREATE SCHEMA IF NOT EXISTS credit_risk_analysis_db.gold_sch;
# MAGIC
# MAGIC CREATE SCHEMA IF NOT EXISTS credit_risk_analysis_db.audit_sch;
# MAGIC SHOW SCHEMAS IN credit_risk_analysis_db;
# MAGIC
# MAGIC CREATE TABLE IF NOT EXISTS credit_risk_analysis_db.audit_sch.audit_log
# MAGIC (
# MAGIC     table_name STRING,
# MAGIC     source_file STRING,
# MAGIC     rows_loaded BIGINT,
# MAGIC     load_start TIMESTAMP,
# MAGIC     load_end TIMESTAMP,
# MAGIC     status STRING,
# MAGIC     error_message STRING,
# MAGIC     batch_id STRING
# MAGIC )
# MAGIC USING DELTA;
# MAGIC SHOW TABLES IN credit_risk_analysis_db.bronze_sch;
# MAGIC SELECT *
# MAGIC FROM credit_risk_analysis_db.bronze_sch.bronze_applicant_profiles
# MAGIC LIMIT 10;
# MAGIC
# MAGIC DESCRIBE DETAIL
# MAGIC credit_risk_analysis_db.bronze_sch.bronze_applicant_profiles;
# MAGIC
# MAGIC CREATE TABLE IF NOT EXISTS credit_risk_analysis_db.audit_sch.audit_log
# MAGIC (
# MAGIC table_name STRING,
# MAGIC rows_loaded BIGINT,
# MAGIC status STRING,
# MAGIC start_time TIMESTAMP,
# MAGIC end_time TIMESTAMP,
# MAGIC batch_id STRING,
# MAGIC error_message STRING
# MAGIC )
# MAGIC USING DELTA;
# MAGIC
# MAGIC OPTIMIZE credit_risk_analysis_db.silver_sch.silver_applicant_profiles;
# MAGIC
# MAGIC
# MAGIC SELECT * 
# MAGIC FROM credit_risk_analysis_db.silver_sch.silver_credit_application
# MAGIC LIMIT 5;
# MAGIC
# MAGIC DESCRIBE credit_risk_analysis_db.silver_sch.silver_credit_application;
# MAGIC
# MAGIC USE CATALOG credit_risk_analysis_db;
# MAGIC USE SCHEMA gold_sch;
# MAGIC
# MAGIC SHOW TABLES;
# MAGIC SELECT * FROM dim_applicant LIMIT 10;
# MAGIC
# MAGIC OPTIMIZE credit_risk_analysis_db.silver_sch.silver_credit_application;
# MAGIC
# MAGIC OPTIMIZE credit_risk_analysis_db.silver_sch.silver_applicant_profiles;
# MAGIC
# MAGIC OPTIMIZE credit_risk_analysis_db.silver_sch.silver_credit_history;
# MAGIC
# MAGIC OPTIMIZE credit_risk_analysis_db.silver_sch.silver_loan_details;
# MAGIC
# MAGIC OPTIMIZE credit_risk_analysis_db.silver_sch.silver_economic_indicators;
# MAGIC
# MAGIC OPTIMIZE credit_risk_analysis_db.silver_sch.silver_credit_application
# MAGIC ZORDER BY(applicant_id);
# MAGIC
# MAGIC VACUUM credit_risk_analysis_db.silver_sch.silver_credit_application
# MAGIC RETAIN 168 HOURS;
# MAGIC
# MAGIC DESCRIBE HISTORY credit_risk_analysis_db.silver_sch.silver_credit_application;
# MAGIC
# MAGIC SELECT *
# MAGIC FROM credit_risk_analysis_db.silver_sch.silver_credit_application
# MAGIC VERSION AS OF 0;
# MAGIC
# MAGIC SELECT *
# MAGIC FROM credit_risk_analysis_db.gold_sch.fact_credit_application
# MAGIC LIMIT 5;
# MAGIC
# MAGIC
# MAGIC
# MAGIC
# MAGIC
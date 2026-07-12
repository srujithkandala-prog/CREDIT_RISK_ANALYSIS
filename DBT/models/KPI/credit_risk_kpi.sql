{{ config(
    materialized='table'
) }}

SELECT

COUNT(*) total_records,

AVG(credit_score) average_credit_score,

AVG(try_cast(replace(debt_to_income_ratio,'%','') AS DOUBLE))
average_dti,

SUM(CASE WHEN credit_worthiness='l1' THEN 1 ELSE 0 END)
good_credit,

SUM(CASE WHEN credit_worthiness='l2' THEN 1 ELSE 0 END)
bad_credit

FROM {{ source('silver','silver_credit_history') }}
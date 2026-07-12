{{ config(
    materialized='table'
) }}

SELECT

COUNT(*)                                     AS total_applications,

SUM(CASE WHEN application_status='1' THEN 1 ELSE 0 END)
                                             AS approved_applications,

SUM(CASE WHEN application_status='0' THEN 1 ELSE 0 END)
                                             AS rejected_applications,

ROUND(
100.0 *
SUM(CASE WHEN application_status='1' THEN 1 ELSE 0 END)
/ COUNT(*),2)
                                             AS approval_rate,

SUM(loan_amount)                             AS total_loan_amount,

AVG(loan_amount)                             AS average_loan_amount,

AVG(rate_of_interest)                        AS average_interest_rate,

AVG(interest_rate_spread)                    AS average_interest_spread

FROM {{ source('silver','silver_credit_application') }}
{{ config(
    materialized='table'
) }}

SELECT

    year,

    COUNT(*) AS total_applications,

    SUM(loan_amount) AS total_loan_amount,

    AVG(loan_amount) AS average_loan_amount,

    AVG(rate_of_interest) AS average_interest_rate,

    SUM(CASE WHEN application_status='1' THEN 1 ELSE 0 END) AS approved,

    SUM(CASE WHEN application_status='0' THEN 1 ELSE 0 END) AS rejected

FROM {{ source('silver','silver_credit_application') }}

GROUP BY year
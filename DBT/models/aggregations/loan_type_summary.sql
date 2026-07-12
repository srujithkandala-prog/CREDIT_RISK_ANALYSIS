{{ config(
    materialized='table'
) }}

SELECT

    loan_type,

    COUNT(*) AS total_applications,

    SUM(loan_amount) AS total_loan_amount,

    AVG(loan_amount) AS average_loan_amount,

    AVG(rate_of_interest) AS average_interest_rate

FROM {{ source('silver','silver_credit_application') }}

GROUP BY loan_type
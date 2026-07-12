{{ config(
    materialized='table'
) }}

SELECT

COUNT(*) AS total_loans,

SUM(loan_amount) AS total_loan_amount,

AVG(rate_of_interest) AS average_interest_rate,

AVG(term) AS average_loan_term

FROM {{ source('silver','silver_credit_application') }}
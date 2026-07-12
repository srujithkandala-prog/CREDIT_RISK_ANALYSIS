{{ config(
    materialized='table'
) }}

SELECT

    year,

    MIN(rate_of_interest) AS minimum_interest_rate,

    MAX(rate_of_interest) AS maximum_interest_rate,

    AVG(rate_of_interest) AS average_interest_rate

FROM {{ source('silver','silver_credit_application') }}

GROUP BY year
{{ config(
    materialized='table'
) }}

SELECT

COUNT(DISTINCT applicant_id) AS total_customers,

AVG(income) AS average_income,

MAX(income) AS highest_income,

MIN(income) AS lowest_income

FROM {{ source('silver','silver_applicant_profiles') }}
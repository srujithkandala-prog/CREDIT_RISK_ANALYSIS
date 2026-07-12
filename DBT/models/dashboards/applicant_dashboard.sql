{{ config(
    materialized='table'
) }}

SELECT

region,

COUNT(DISTINCT applicant_id) applicants,

AVG(income) average_income,

MAX(income) highest_income,

MIN(income) lowest_income

FROM {{ source('silver','silver_applicant_profiles') }}

GROUP BY region
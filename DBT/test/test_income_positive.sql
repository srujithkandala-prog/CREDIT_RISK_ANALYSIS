SELECT *
FROM {{ ref('dim_applicant') }}
WHERE income < 0
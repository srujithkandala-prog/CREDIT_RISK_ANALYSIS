SELECT
    f.applicant_id
FROM {{ ref('fact_credit_application') }} f

LEFT JOIN {{ ref('dim_applicant') }} d

ON f.applicant_id = d.applicant_id

WHERE d.applicant_id IS NULL
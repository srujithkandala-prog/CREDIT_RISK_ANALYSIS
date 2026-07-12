SELECT
    applicant_sk,
    COUNT(*)
FROM {{ ref('dim_applicant') }}
GROUP BY applicant_sk
HAVING COUNT(*) > 1
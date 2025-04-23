* Filtering out missing/null values
SELECT *
FROM patient_data
WHERE reason IS NOT NULL
  AND insurance_status IS NOT NULL;

*Standardize text casing
SELECT LOWER(insurance_provider) AS standardized_provider
FROM patient_data;

*Trim extra spaces
SELECT TRIM(reason) AS cleaned_reason
FROM patient_data;

 *Check for duplicates
SELECT patient_id, last_visit_date, COUNT(*) AS count
FROM patient_data
GROUP BY patient_id, last_visit_date
HAVING COUNT(*) > 1;

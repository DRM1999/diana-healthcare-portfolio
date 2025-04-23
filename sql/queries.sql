-- Count drop-offs by reason
SELECT reason, COUNT(*) AS total
FROM patient_data
GROUP BY reason
ORDER BY total DESC;

-- Drop-offs by cancelled insurance providers
SELECT insurance_provider, COUNT(*) AS dropoffs
FROM patient_data
WHERE insurance_status = 'Cancelled'
GROUP BY insurance_provider
ORDER BY dropoffs DESC;

-- Drop-offs per month
SELECT DATE_FORMAT(last_visit_date, '%Y-%m') AS month, COUNT(*) AS total
FROM patient_data
GROUP BY month
ORDER BY month;

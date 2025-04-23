-- Count how many patients dropped off, grouped by reason
SELECT reason, COUNT(*) AS total
FROM patient_data
GROUP BY reason
ORDER BY total DESC;

-- Get drop-offs specifically for patients with cancelled insurance
SELECT insurance_provider, COUNT(*) AS dropoffs
FROM patient_data
WHERE insurance_status = 'Cancelled'
GROUP BY insurance_provider
ORDER BY dropoffs DESC;

-- Monthly trend of patient drop-offs (formatting to year-month)
SELECT DATE_FORMAT(last_visit_date, '%Y-%m') AS month, COUNT(*) AS total
FROM patient_data
GROUP BY month
ORDER BY month;

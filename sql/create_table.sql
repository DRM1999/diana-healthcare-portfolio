
CREATE TABLE patient_data (
    patient_id INT PRIMARY KEY,
    last_visit_date DATE,
    reason VARCHAR(100) NOT NULL,
    insurance_provider VARCHAR(100),
    insurance_status ENUM('Active', 'Cancelled'),
    follow_up_attempted ENUM('Yes', 'No'),
    outcome ENUM('Scheduled Again', 'Pending', 'Lost')
); 

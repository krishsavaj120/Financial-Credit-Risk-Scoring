-- Q1. Total Applicants & Portfolio Exposure
        SELECT 
            COUNT(*) AS total_applicants,
            SUM(credit_amount) AS total_loan_volume,
            AVG(duration) AS avg_loan_duration
        FROM german_credit_data;

-- Q2. High Risk Count & Concentration
        SELECT 
            risk_tier,
            COUNT(*) AS applicant_count,
            ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM german_credit_data), 2) AS concentration_pct
        FROM german_credit_data
        GROUP BY risk_tier;

-- Q3. Bad Loans (Default) by Purpose
-- This helps you check if your 'Default Status' logic (1=Default, 0=Good) is correct
        SELECT 
            purpose,
            COUNT(*) AS total_loans,
            SUM(default_status) AS total_defaults,
            ROUND(100.0 * SUM(default_status) / COUNT(*), 2) AS default_rate_pct
        FROM german_credit_data
        GROUP BY purpose
        ORDER BY default_rate_pct DESC;

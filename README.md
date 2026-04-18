# Financial Credit Risk Scoring & Default Prediction 💳📉

## 📌 Project Overview
This project replicates a real-world banking credit risk assessment pipeline. Using the **German Credit Dataset**, I developed an end-to-end system that transitions from raw data engineering to executive-level business intelligence. The goal is to identify high-risk borrowers and quantify potential financial defaults using a modern data stack.

## 🛠️ Tech Stack
- **Data Engineering:** Python (Pandas, Numpy)
- **Database Management:** MySQL
- **Business Intelligence:** Power BI
- **Documentation:** Gamma AI & Markdown

## 🚀 The Data Pipeline
1. **Phase 1: Advanced Feature Engineering (Python)**
   - Standardized 950+ records into `snake_case`.
   - Handled financial missing values (identifying 'Unknown' account statuses).
   - Created **Monthly Burden** (`credit_amount / duration`) to measure repayment stress.
   - Segmented applicants into **Risk Tiers** (Low, Medium, Critical) based on savings and loan size.

2. **Phase 2: Relational Storage (MySQL)**
   - Migrated the engineered dataset to a MySQL database (`financial_risk_db`).
   - Performed portfolio-level auditing using complex SQL queries.

3. **Phase 3: Visual Intelligence (Power BI)**
   - Built a **Credit Officer Dashboard** featuring:
     - **Default Rate Gauge:** Real-time tracking against a 15% risk threshold.
     - **Decomposition Tree:** Root-cause analysis of defaults (Checking account status identified as the #1 predictor).
     - **Risk Matrix:** Cross-analysis of Housing vs. Job skill levels.

## 📈 Key Insights
- **The "Checking" Factor:** Applicants with no checking account history or 'little' savings are 3.5x more likely to default.
- **Burden Threshold:** Default rates spike significantly once the "Monthly Burden" exceeds 250 DM/month.
- **Demographic Reliability:** The "Senior" age group (45-60) showed the highest repayment consistency despite lower loan volumes.

## 📂 Repository Structure
- `notebooks/`: Jupyter Notebook with the full Python cleaning and engineering logic.
- `sql/`: SQL scripts for portfolio analysis and verification.
- `dashboard/`: Power BI `.pbix` file.
- `docs/`: Full Project Report (PDF).

## 💡 Recommendations
- **Automated Rejection:** Implement hard stops for "Critical Risk" applicants with high monthly burdens.
- **Policy Shift:** Tighten criteria for long-duration loans (>36 months) in the 'Business' and 'Education' categories.

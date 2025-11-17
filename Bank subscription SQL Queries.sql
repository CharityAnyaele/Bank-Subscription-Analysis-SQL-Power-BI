CREATE DATABASE Bank_data;
USE Bank_data;
USE Bank;
CREATE TABLE Bank_data (Age INT,
						Job VARCHAR(20),
                        Marital VARCHAR(10),
                         Education VARCHAR(15), 
						 Defult_credit CHAR(4),
                         Balance DECIMAL(10,2),
                         Housing CHAR(4),
                         Loan CHAR (4),
                         Contact_type VARCHAR(15),
                         Contact_day INT,
                         Contact_month VARCHAR(10),
                         Call_duration INT,
                         Campaign_contacts INT,
                         P_days INT,
                         Previous_contacts INT,
                         P_outcomes VARCHAR(15),
                         Campaign_outcome CHAR (4),
						 Final_outcome INT);
SELECT Marital, COUNT(Marital) FROM bank_data.q GROUP BY Marital;
ALTER TABLE Bank_data.q
ADD age_group VARCHAR(20);
SET SQL_SAFE_UPDATES = 0;

UPDATE Bank_data.q
SET age_group = CASE 
              WHEN age< 30 THEN 'YOUNG'
              WHEN age BETWEEN 30 AND 49 THEN 'Middle_aged'
              WHEN age BETWEEN 50 AND 64 THEN 'Advanced'
              ELSE 'Senior' 
              END; 
              SELECT * FROM Bank_data.q;

SET SQL_SAFE_UPDATES = 1;
SELECT age_group, SUM(Final_outcome) AS Total_Subscribers FROM Bank_data.q 
				GROUP BY age_group;
SELECT CASE
          WHEN TRIM(LOWER(job)) = 'Unknown' THEN 'Other'
		ELSE job
        END AS JOB_group,
        SUM(Final_outcome) AS Total_Subscribers_job
        FROM Bank_data.q  
        GROUP BY job;
SELECT COUNT(p_outcomes) AS Prev_failure_outcome FROM Bank_data.q WHERE p_outcomes = 'failure' ;
SELECT COUNT(p_outcomes) AS Prev_success_outcome FROM Bank_data.q WHERE p_outcomes = 'success' ;
SELECT COUNT(p_outcomes) AS Prev_other_outcome FROM Bank_data.q WHERE p_outcomes = 'other' ;
SELECT COUNT(campaign_Outcome) AS present_outcome FROM Bank_data.q WHERE campaign_outcome = 'yes';
SELECT SUM(Final_outcome) AS Total_subscribers_with_loan FROM Bank_data.q WHERE Loan = 'yes' ;
SELECT SUM(Final_outcome) AS Total_subscribers_with_defaults FROM Bank_data.q  WHERE Defult_credit = 'yes' ;
SELECT COUNT(P_outcomes) AS Total_Success_outcome FROM Bank_data.q WHERE P_outcomes = "success" ;
SELECT MAX(Balance) AS Highest_balance FROM Bank_data.q WHERE Final_outcome= '1' ;
SELECT MIN(Balance) AS Lowest_balance FROM bank_data.q WHERE Final_outcome = '1' ;
SELECT contact_month, SUM(Final_outcome) AS Total_subscriptions FROM Bank_data.q GROUP BY contact_month;

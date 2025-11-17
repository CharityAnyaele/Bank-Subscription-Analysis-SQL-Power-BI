# Bank-Subscription-Analysis-SQL-Power-BI
Project Goal: To analyze key demographic, behavioral, and temporal factors driving the success of the financial subscription campaign, thereby providing actionable insights for future marketing strategy optimization.
## Project Methodology and Execution
The project followed a three-phase data pipeline, ensuring data quality, robust transformation, and intuitive visualization:
1. Data Ingestion and Cleaning (Excel):
The process began with initial data cleaning and preparation performed in Excel. This critical first step involved standardizing text fields, handling missing values, and verifying data types to ensure the dataset's integrity before loading it into the database environment.
2. Data Transformation and Modeling (SQL):
The cleaned dataset was loaded into a SQL database (Bank_data.q) for complex data manipulation and feature engineering. Two significant transformations were implemented to enable deeper analysis:
* Age Segmentation: A new categorical field, age_group, was created using a CASE statement. This grouped subscribers into meaningful segments: 'Young' (under 30), 'Middle_aged' (30-49), 'Advanced' (50-64), and 'Senior' (65+).
* Categorical Cleanup: Job titles were standardized (e.g., handling unknown values by recasting them to a generalized category) and aggregated by key demographic fields such as Marital status and Job for reporting.
* Data Extraction: Targeted SQL queries were then executed to calculate aggregate metrics, such as total subscriptions by month, success rates by marital status, and prior campaign outcomes, preparing the data for the final visualization stage.
3. Visualization and Reporting (Power BI):
The processed data was connected to Power BI to create the Financial Subscription Overview dashboard. This platform was used to transform raw metrics into interactive visualizations, allowing for rapid identification of performance trends and demographic strongholds.
Key Findings and Strategic Insights
The Power BI dashboard reveals critical patterns concerning the successful subscription outcomes (Total Current Subscribers: 1,042, Total Previous Campaign Subscribers: 258):
* Marital Status is a Dominant Factor: The Married segment accounts for the largest share of subscribers at 61.87\%, followed by Single (26.25\%) and Divorced (11.88\%). This strongly suggests that marketing efforts are most effective when targeting individuals in the married demographic.
* Age Group Performance: The Middle-aged segment (30-49) is the primary driver of subscriptions, accounting for nearly 60\% of all successful outcomes (59.12\%). The Advanced age group (50-64) is the second most valuable segment (29.54\%). This indicates that the campaign resonates most with individuals in their prime earning and family-building years.
* Campaign Seasonality: The subscription volume exhibits strong seasonality. The peak subscription months are May through August, followed by a noticeable decline in the second half of the year, hitting a trough in December and January.
* Risk Profile: The vast majority of subscribers maintain a low-risk profile. Only 8.2\% of current subscribers hold an active loan, and a very low 1.7\% have a record of default.
# Conclusion
The project successfully established a streamlined data analysis process and highlighted clear target market characteristics. The key takeaway is the campaign's strong performance among Middle-aged, Married individuals, peaking during the summer months. Future strategies should leverage these findings by:
1. Prioritizing marketing spend and contact frequency on the Middle-aged and Married segments.
2. Optimizing resource allocation to capitalize on the May-August subscription peak.
3. Analyzing the specific channels or job roles within the 'Middle-aged' group to refine targeting precision.

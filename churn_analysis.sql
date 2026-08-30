--SELECT TABLE_SCHEMA, TABLE_NAME
--FROM INFORMATION_SCHEMA.TABLES
--WHERE TABLE_TYPE = 'BASE TABLE';
--USE CustomerChurnDB;
--GO
--SELECT 
 --   TABLE_SCHEMA,
   -- TABLE_NAME
--FROM INFORMATION_SCHEMA.TABLES
--WHERE TABLE_TYPE = 'BASE TABLE';
--SELECT * FROM [Telco-Clean-Customer-Churn];
/*SELECT TOP 10 * FROM [Telco-Clean-Customer-Churn];
SELECT COUNT(*) AS Total_Customers
FROM [Telco-Clean-Customer-Churn];
-- Member of customers are exit [Yes] and not exit [No]
SELECT
    Churn,
    COUNT(*) AS Customer_Count
FROM [Telco-Clean-Customer-Churn]
GROUP BY Churn;
SELECT
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END) 
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn];*/
-- Contract Complet
/*SELECT
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY Contract
ORDER BY Churn_Rate_Percentage DESC;
--internet service
SELECT
    InternetService,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY InternetService
ORDER BY Churn_Rate_Percentage DESC;
--Payment method
SELECT
    PaymentMethod,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY PaymentMethod
ORDER BY Churn_Rate_Percentage DESC;
--Gender vise customers
SELECT
    gender,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY gender
ORDER BY Churn_Rate_Percentage DESC;*/
-- Compare churn rates between senior and non-senior customers
-- Analyze customer churn based on customer tenure
/*SELECT
    SeniorCitizen,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY SeniorCitizen
ORDER BY Churn_Rate_Percentage DESC;*/
/*SELECT
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS Tenure_Group,
    
    COUNT(*) AS Total_Customers,
    
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) 
        AS Churned_Customers,
    
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage

FROM [Telco-Clean-Customer-Churn]

GROUP BY
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END

ORDER BY Churn_Rate_Percentage DESC;*/
--Analyze customer churn based on monthly charges
/*SELECT
    CASE
        WHEN TRY_CAST(MonthlyCharges AS DECIMAL(10,2)) < 35 THEN 'Low'
        WHEN TRY_CAST(MonthlyCharges AS DECIMAL(10,2)) < 70 THEN 'Medium'
        WHEN TRY_CAST(MonthlyCharges AS DECIMAL(10,2)) < 100 THEN 'High'
        ELSE 'Very High'
    END AS Charge_Category,

    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS Churned_Customers,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage

FROM [Telco-Clean-Customer-Churn]

GROUP BY
    CASE
        WHEN TRY_CAST(MonthlyCharges AS DECIMAL(10,2)) < 35 THEN 'Low'
        WHEN TRY_CAST(MonthlyCharges AS DECIMAL(10,2)) < 70 THEN 'Medium'
        WHEN TRY_CAST(MonthlyCharges AS DECIMAL(10,2)) < 100 THEN 'High'
        ELSE 'Very High'
    END

ORDER BY Churn_Rate_Percentage DESC;*/
--Analyze customer churn based on partner status
/*SELECT
    Partner,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY Partner
ORDER BY Churn_Rate_Percentage DESC;*/
--Analyze customer churn based on dependent status

/*SELECT
    Dependents,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY Dependents
ORDER BY Churn_Rate_Percentage DESC;*/
-- Analyze customer churn based on phone service
/*SELECT
    PhoneService,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY PhoneService
ORDER BY Churn_Rate_Percentage DESC;*/
--Analyze customer churn based on multiple phone lines
/*SELECT
    MultipleLines,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100,
        2
    ) AS Churn_Rate_Percentage
FROM [Telco-Clean-Customer-Churn]
GROUP BY MultipleLines
ORDER BY Churn_Rate_Percentage DESC;*/
SELECT *
FROM customers;

SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id);



## WHO ARE MY CHURNED CUSTOMERS?? WHAT ARE THEIR CONTRACTS?


## Churned Customers
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE churn LIKE 'Yes';
# 1869 in 7043 customers have churned


## What percentage of CHURNED customers are on MONTH-TO-MONTH contract?
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE churn LIKE 'Yes' AND contract_type LIKE 'Month-to-month';
# Of those churned, 1655/1869 were on month-to-month contracts.
# 88.5% of churned customers are m2m



# Percentage of churned customers on ONE year contract
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE contract_type LIKE 'One year' AND churn LIKE 'Yes';
# Only 166/1869 churned (8.9%) are on one year



# Percentage of churned customers on TWO year contract
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE contract_type LIKE 'Two year' AND churn LIKE 'Yes';
# Only 48/1869 churned (0.03%) are on two year







### TOTAL CUSTOMERS: CONTRACT TYPE!

# How many total customers are m2m?
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE contract_type LIKE 'Month-to-month';
# 3875/7034 (55%) total are month-to-month
# 1655/3875 are churned m2m
# 42.7% of m2m are churned


# How many total customers are a one year contract?
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE contract_type LIKE 'One year';
# 1473/7034 (21%) customers are a one year contract.




# How many total customers are on a two year contract?
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE contract_type LIKE 'two year';
# 1695/7034 (24%) are on a two year contract.




# EXPLORE
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE churn LIKE 'Yes' 
AND contract_type LIKE 'Month-to-month';


SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE churn LIKE 'Yes' 
AND contract_type LIKE 'Month-to-month'
/* AND multiple_lines LIKE 'yes' */
AND dependents LIKE 'no'
AND ;
# 1655 total
# 813 males / 814 females
# 441 senior citizens
# 1396 have no dependents (whopping 84%!) / 259 have dependents
#### singletons: 637 have one phone line / 626 have multiple lines
#### singletons: 349 have a partner / 1047 do not have a partner
# 780 have one lines / 722 have multiple lines



## ANALYZING CUSTOMERS WITH AUTOMATIC PAYMENTS
SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
WHERE payment_type LIKE '%automatic%' 
AND churn LIKE 'Yes'
AND contract_type LIKE 'Month-to-month';
# 7043 total overall
# 3055/7043 have automatic payments, 490 of auto payments churned, 2576 have not churned
# 379/1655 of churned month to month have automatic payments



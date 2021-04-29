select *
from customers;

SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id);


SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
where churn like 'Yes';
# 1869 in 7043 customers have churned

SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
where churn like 'Yes' and contract_type like 'Month-to-month';
# Of those churned, 1655 of 1869 were on month-to-month contracts.
# (89% of churned customers are m2m)


SELECT *
FROM customers
JOIN internet_service_types USING(internet_service_type_id)
JOIN contract_types USING(contract_type_id)
JOIN payment_types USING (payment_type_id)
where contract_type like 'Month-to-month';
# 3875 in 7034 total are month-to-month
# 43% of m2m are churning



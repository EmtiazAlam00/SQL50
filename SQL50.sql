# 1757. Recyclable and Low Fat Products
select product_id
from Products
where low_fats = 'Y' and recyclable = 'Y'

# 584. Find Customer Referee
select name
from Customer
where referee_id != 2 or referee_id is NULL

# 595. Big Countries
select name, population, area
from World
where area >= 3000000 or population >= 25000000

# 1148. Article View 1
select distinct author_id as id
from Views
where author_id = viewer_id
ORDER BY id asc

# 1683 Invalid Tweets
select tweet_id
from Tweets
where char_length(content) > 15

# 1378 Replace Employee ID With The Unique Identifier
select EmployeeUNI.unique_id, Employees.name
from Employees 
left join EmployeeUNI on Employees.id = EmployeeUNI.id

# 1068 Product Sales Analysis I
select Product.product_name, Sales.year, Sales.price
from Sales left join Product on Product.product_id = Sales.product_id

# 1581 Customer Who visited but did not make any transactions
SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans
FROM Visits v LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;

select customer_id, count(distinct Visits.visit_id) as count_no_trans
from Visits left join Transactions on Visits.visit_id = Transactions.visit_id
where amount is null
group by customer_id

# 197 Rising Temperature
select w2.id
from Weather w1 join Weather w2 on DATEDIFF(w1.recordDate, w2.recordDate) = -1
where w2.temperature > w1.temperature
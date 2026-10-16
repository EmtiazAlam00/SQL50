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
# 586. Customer Placing the Largest Number of Orders
# Easy
# 775
# 51
# Companies
# SQL Schema
# Pandans Schema
# Table: Orders

# +-----------------+----------+
# | Column Name     | Type     |
# +-----------------+----------+
# | order_number    | int      |
# | customer_number | int      |
# +-----------------+----------+
# In SQL, order_number is the primary key for this table.
# This table contains information about the order ID and the customer ID.
 

# Find the customer_number for the customer who has placed the largest number of orders.

# The test cases are generated so that exactly one customer will have placed more orders than any other customer.

# The result format is in the following example.

 

# Example 1:

# Input: 
# Orders table:
# +--------------+-----------------+
# | order_number | customer_number |
# +--------------+-----------------+
# | 1            | 1               |
# | 2            | 2               |
# | 3            | 3               |
# | 4            | 3               |
# +--------------+-----------------+
# Output: 
# +-----------------+
# | customer_number |
# +-----------------+
# | 3               |
# +-----------------+
# Explanation: 
# The customer with number 3 has two orders, which is greater than either customer 1 or 2 because each of them only has one order. 
# So the result is customer_number 3.
 

# Follow up: What if more than one customer has the largest number of orders, can you find all the customer_number in this case?

# Accepted
# 185.2K
# Submissions
# 276.2K
# Acceptance Rate
# 67.0%

# Write your MySQL query statement below
SELECT customer_number
from orders
group by customer_number
order by count(customer_number) 
desc limit 1;

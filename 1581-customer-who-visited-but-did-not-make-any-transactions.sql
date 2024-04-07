-- Solution:
SELECT customer_id, COUNT(customer_id) as count_no_trans 
FROM Visits 
LEFT JOIN Transactions ON Visits.visit_id = Transactions.visit_id 
WHERE Visits.visit_id 
NOT IN (SELECT visit_id FROM Transactions) 
GROUP BY customer_id;

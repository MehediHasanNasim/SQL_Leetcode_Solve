-- Problem: You are given Visits and Transactions tables. The task is to identify customers who visited the mall without making any transactions, and count how many times each of them did so.


SELECT V.customer_id, COUNT(*) AS count_no_trans
FROM Visits AS V
LEFT JOIN Transactions AS T
ON T.visit_id = V.visit_id 
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id

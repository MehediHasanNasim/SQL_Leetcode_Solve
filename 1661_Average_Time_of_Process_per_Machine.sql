--- Problem: You are given a log of machine activities where each machine performs multiple processes, and each process has a 'start' and 'end' timestamp.
--  You need to calculate the average processing time per machine, where:
-- processing time for a process = end_timestamp - start_timestamp
-- average processing time = total processing time for all processes of a machine ÷ number of processes
-- Output should be rounded to 3 decimal places


SELECT 
    A.machine_id, 
    ROUND(AVG(B.timestamp - A.timestamp), 3) AS processing_time
FROM Activity AS A
JOIN Activity AS B
ON A.machine_id = B.machine_id 
AND A.process_id = B.process_id
WHERE A.activity_type = 'start'
AND B.activity_type = 'end'
GROUP BY A.machine_id;
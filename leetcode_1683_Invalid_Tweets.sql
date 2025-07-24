-- Problem: You're given a Tweets table. Find all tweet IDs where the content length is greater than 15 characters (i.e., invalid tweets).


SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
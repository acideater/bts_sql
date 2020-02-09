-- Questions: GROUP BY --

/* 1
Which account (by name) placed the earliest order? Your solution should have
the account name and the date of the order.
*/
SELECT
a.name,
MIN(o.occurred_at) AS earliest_order
FROM orders o
JOIN accounts a
ON o.account_id = a.id
GROUP BY a.name
ORDER BY earliest_order
LIMIT 1
--OUTPUT--
name: DISH Network
earliest_order: 2013-12-04T04:22:44.000Z

/* 2
Find the total sales in usd for each account. You should include two columns -
the total sales for each company's orders in usd and the company name.
*/
SELECT
a.name,
SUM(o.total_amt_usd) AS total_amt_usd
FROM orders o
JOIN accounts a
ON o.account_id = a.id
GROUP BY a.name

/* 3
Via what channel did the most recent (latest) web_event occur, which account was
associated with this web_event? Your query should return only three values -
the date, channel, and account name.
*/
SELECT
a.name,
MAX(w.occurred_at) AS latest_date,
w.channel
FROM web_events w
JOIN accounts a
ON a.id = w.account_id
GROUP BY a.name, w.channel
ORDER BY latest_date DESC
LIMIT 1
--OUTPUT--
name: Molina Healthcare
latest_date: 2017-01-01T23:51:09.000Z
channel: organic

/* 4
Find the total number of times each type of channel from the web_events was
used. Your final table should have two columns - the channel and the number of
times the channel was used.
*/
--My answer--
SELECT COUNT (channel),
channel
FROM web_events
GROUP BY channel
--OUTPUT--
906	adwords
5298 direct
476	banner
967	facebook
952	organic
474	twitter

--provided answer--
SELECT w.channel, COUNT(*)
FROM web_events w
GROUP BY w.channel
--OUTPUT--
adwords	906
direct	5298
banner	476
facebook 967
organic	952
twitter	474

/* 5
Who was the primary contact associated with the earliest web_event?
*/
--my answer--
SELECT
a.primary_poc,
MIN(w.occurred_at) AS earliest_event
FROM web_events w
JOIN accounts a ON a.id = w.account_id
GROUP BY a.primary_poc
ORDER by earliest_event
LIMIT 1
--OUTPUT--
primary_poc	earliest_event
Leana Hawker	2013-12-04T04:18:29.000Z

--provided answer--
SELECT a.primary_poc
FROM web_events w
JOIN accounts a
ON a.id = w.account_id
ORDER BY w.occurred_at
LIMIT 1;
--OUTPUT--
primary_poc	occurred_at
Leana Hawker	2013-12-04T04:18:29.000Z

/* 6
What was the smallest order placed by each account in terms of total usd.
Provide only two columns - the account name and the total usd. Order from
smallest dollar amounts to largest.
*/
SELECT
a.name,
MIN(o.total_amt_usd) AS min_total_usd
FROM accounts a
JOIN orders o ON a.id = o.account_id
GROUP BY a.name
ORDER BY min_total_usd


/* 7
Find the number of sales reps in each region. Your final table should have two
columns - the region and the number of sales_reps. Order from fewest reps to
most reps.
*/
SELECT
r.name AS region,
COUNT(s.name) AS sales_reps_num
FROM region r
JOIN sales_reps s ON
s.region_id = r.id
GROUP BY region
ORDER BY sales_reps_num
--OUTPUT--
region sales_reps_num
Midwest	9
Southeast	10
West	10
Northeast	21

/* Quiz: Last Check */

/* 1
Provide a table that provides the region for each sales_rep along with their
associated accounts. This time only for the Midwest region. Your final table
should include three columns: the region name, the sales rep name, and the
account name. Sort the accounts alphabetically (A-Z) according to account name.
*/
SELECT
r.name AS region,
s.name AS sales_rep_name,
a.name AS account_name
FROM region r

JOIN sales_reps s
ON r.id = s.region_id

JOIN accounts a
ON s.id = a.sales_rep_id

WHERE r.name = 'Midwest'
ORDER BY a.name;


/* 2
Provide a table that provides the region for each sales_rep along with their
associated accounts. This time only for accounts where the sales rep has a
first name starting with S and in the Midwest region. Your final table should
include three columns: the region name, the sales rep name, and the account
name. Sort the accounts alphabetically (A-Z) according to account name.
*/
SELECT
r.name AS region,
s.name AS sales_rep_name,
a.name AS account_name
FROM region r

JOIN sales_reps s
ON r.id = s.region_id

JOIN accounts a
ON s.id = a.sales_rep_id

WHERE r.name = 'Midwest' AND s.name LIKE 's%'
ORDER BY a.name;


/* 3
Provide a table that provides the region for each sales_rep along with their
associated accounts. This time only for the Midwest region. Your final table
should include three columns: the region name, the sales rep name, and the
account name. Sort the accounts alphabetically (A-Z) according to account name.
*/

/* 4
Provide a table that provides the region for each sales_rep along with their
associated accounts. This time only for the Midwest region. Your final table
should include three columns: the region name, the sales rep name, and the
account name. Sort the accounts alphabetically (A-Z) according to account name.
*/

/* 5
Provide a table that provides the region for each sales_rep along with their
associated accounts. This time only for the Midwest region. Your final table
should include three columns: the region name, the sales rep name, and the
account name. Sort the accounts alphabetically (A-Z) according to account name.
*/

/* 6
Provide a table that provides the region for each sales_rep along with their
associated accounts. This time only for the Midwest region. Your final table
should include three columns: the region name, the sales rep name, and the
account name. Sort the accounts alphabetically (A-Z) according to account name.
*/

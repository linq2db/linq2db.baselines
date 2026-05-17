-- PostgreSQL.15 PostgreSQL

SELECT
	('2010-01-' || Lpad(t."TransactionId"::text,2,'0'))::Date
FROM
	"Transactions" t
WHERE
	Floor(Extract(day From ('2010-01-' || Lpad(t."TransactionId"::text,2,'0'))::Date))::Int > 0

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."TransactionId",
	t1."TransactionDate"
FROM
	"Transactions" t1


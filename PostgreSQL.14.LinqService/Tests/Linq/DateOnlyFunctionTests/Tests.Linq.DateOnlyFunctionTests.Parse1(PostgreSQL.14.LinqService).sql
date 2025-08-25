BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	('2010-01-' || Lpad(t."TransactionId"::text,2,'0'))::Date
FROM
	"Transactions" t
WHERE
	Floor(Extract(day From ('2010-01-' || Lpad(t."TransactionId"::text,2,'0'))::Date))::Int > 0

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	t1."TransactionId",
	t1."TransactionDate"
FROM
	"Transactions" t1


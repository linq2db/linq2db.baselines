BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(week From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


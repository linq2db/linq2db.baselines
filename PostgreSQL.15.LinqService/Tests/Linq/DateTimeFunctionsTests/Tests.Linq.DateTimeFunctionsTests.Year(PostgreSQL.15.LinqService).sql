BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


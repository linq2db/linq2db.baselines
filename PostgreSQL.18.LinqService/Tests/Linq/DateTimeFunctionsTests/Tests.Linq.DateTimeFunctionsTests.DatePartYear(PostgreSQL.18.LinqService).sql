BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


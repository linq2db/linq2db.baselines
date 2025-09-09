BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(hour From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(day From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


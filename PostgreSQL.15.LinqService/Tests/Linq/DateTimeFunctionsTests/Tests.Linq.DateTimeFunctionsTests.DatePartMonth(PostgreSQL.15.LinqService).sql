BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


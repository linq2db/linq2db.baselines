BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	(Floor(Extract(month From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


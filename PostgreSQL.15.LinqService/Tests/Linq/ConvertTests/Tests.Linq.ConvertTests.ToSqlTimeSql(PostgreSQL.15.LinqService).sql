BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	(Floor(Extract(hour From t."DateTimeValue"))::Int || ':01:01')::Time
FROM
	"LinqDataTypes" t


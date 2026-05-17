-- PostgreSQL.13 PostgreSQL

SELECT
	(Floor(Extract(year From t."DateTimeValue"))::Int::text || '-01-01')::Date
FROM
	"LinqDataTypes" t


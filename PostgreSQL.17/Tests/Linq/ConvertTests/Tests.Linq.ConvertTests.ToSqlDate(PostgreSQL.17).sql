-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	(Floor(Extract(year From t."DateTimeValue"))::Int::text || '-01-01')::Date
FROM
	"LinqDataTypes" t


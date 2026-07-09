-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	(Floor(Extract(hour From t."DateTimeValue"))::Int::text || ':01:01')::Time
FROM
	"LinqDataTypes" t


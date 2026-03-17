-- PostgreSQL.18 PostgreSQL

SELECT
	(Floor(Extract(hour From t."DateTimeValue"))::Int::text || ':01:01')::Time
FROM
	"LinqDataTypes" t


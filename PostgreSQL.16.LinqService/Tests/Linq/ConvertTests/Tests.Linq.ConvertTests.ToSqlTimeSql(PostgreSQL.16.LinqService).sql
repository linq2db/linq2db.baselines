BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(Floor(Extract(hour From t."DateTimeValue"))::Int || ':01:01')::Time
FROM
	"LinqDataTypes" t


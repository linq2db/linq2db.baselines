BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(Floor(Extract(year From t."DateTimeValue"))::Int || '-01-01 00:20:00')::Timestamp
FROM
	"LinqDataTypes" t


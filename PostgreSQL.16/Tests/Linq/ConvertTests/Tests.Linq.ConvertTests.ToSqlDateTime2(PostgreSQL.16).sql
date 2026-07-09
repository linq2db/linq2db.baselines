-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	(Floor(Extract(year From t."DateTimeValue"))::Int::text || '-01-01 00:20:00')::Timestamp
FROM
	"LinqDataTypes" t


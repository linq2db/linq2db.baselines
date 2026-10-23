-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Extract(hour From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


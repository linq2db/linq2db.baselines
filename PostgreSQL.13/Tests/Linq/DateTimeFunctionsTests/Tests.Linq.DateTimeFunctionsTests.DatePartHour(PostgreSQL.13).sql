-- PostgreSQL.13 PostgreSQL12
SELECT
	Floor(Extract(hour From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


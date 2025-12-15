-- PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(hour From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


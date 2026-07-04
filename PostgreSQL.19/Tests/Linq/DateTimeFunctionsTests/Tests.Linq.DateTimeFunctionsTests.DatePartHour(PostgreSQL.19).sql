-- PostgreSQL.19 PostgreSQL13

SELECT
	Floor(Extract(hour From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


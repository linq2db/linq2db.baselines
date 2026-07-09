-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	(Floor(Extract(hour From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


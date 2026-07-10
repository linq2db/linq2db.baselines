-- PostgreSQL.13 PostgreSQL12

SELECT
	(Floor(Extract(month From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


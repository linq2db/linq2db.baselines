-- PostgreSQL.13 PostgreSQL13

SELECT
	(Floor(Extract(hour From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


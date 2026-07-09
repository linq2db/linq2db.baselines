-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	(Floor(Extract(minute From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


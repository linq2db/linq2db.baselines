-- PostgreSQL.18 PostgreSQL13

SELECT
	(Floor(Extract(day From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


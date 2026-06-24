-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	(Floor(Extract(year From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


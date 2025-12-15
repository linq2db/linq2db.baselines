-- PostgreSQL.18 PostgreSQL

SELECT
	(Floor(Extract(year From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


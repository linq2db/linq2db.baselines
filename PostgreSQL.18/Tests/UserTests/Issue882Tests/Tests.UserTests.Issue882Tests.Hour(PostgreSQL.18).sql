-- PostgreSQL.18 PostgreSQL

SELECT
	(Floor(Extract(hour From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


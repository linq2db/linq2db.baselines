-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	(Floor(Extract(month From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


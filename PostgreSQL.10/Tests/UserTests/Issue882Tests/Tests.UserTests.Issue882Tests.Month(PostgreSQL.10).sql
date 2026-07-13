-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	(Floor(Extract(month From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


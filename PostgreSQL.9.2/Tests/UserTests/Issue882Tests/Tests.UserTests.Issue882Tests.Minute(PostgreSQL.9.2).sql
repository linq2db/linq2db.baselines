-- PostgreSQL.9.2 PostgreSQL
SELECT
	(Floor(Extract(minute From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


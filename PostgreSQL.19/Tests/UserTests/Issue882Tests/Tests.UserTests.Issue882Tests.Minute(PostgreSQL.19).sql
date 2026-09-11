-- PostgreSQL.19 PostgreSQL12
SELECT
	(Floor(Extract(minute From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


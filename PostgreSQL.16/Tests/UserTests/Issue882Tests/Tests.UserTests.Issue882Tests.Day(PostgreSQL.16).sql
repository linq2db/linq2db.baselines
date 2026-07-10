-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	(Floor(Extract(day From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


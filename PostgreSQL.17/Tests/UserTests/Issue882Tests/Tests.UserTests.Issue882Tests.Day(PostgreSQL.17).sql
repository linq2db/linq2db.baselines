-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	(Floor(Extract(day From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


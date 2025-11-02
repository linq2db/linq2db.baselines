-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(Floor(Extract(minute From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


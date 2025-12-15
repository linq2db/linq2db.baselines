-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(Floor(Extract(doy From t."DateTimeValue"))::Int::decimal % 7)::decimal
FROM
	"LinqDataTypes" t


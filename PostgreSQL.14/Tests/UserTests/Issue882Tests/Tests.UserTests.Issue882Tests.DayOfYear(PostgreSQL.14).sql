-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor(Floor(Extract(doy From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


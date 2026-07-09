-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	Floor(Extract(doy From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


-- PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(doy From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


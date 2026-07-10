-- PostgreSQL.13 PostgreSQL12
SELECT
	Floor(Extract(doy From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


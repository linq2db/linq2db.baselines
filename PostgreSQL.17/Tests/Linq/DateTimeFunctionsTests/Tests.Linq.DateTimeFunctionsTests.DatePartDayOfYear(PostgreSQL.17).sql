-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	Floor(Extract(doy From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


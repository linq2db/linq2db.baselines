-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(doy From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


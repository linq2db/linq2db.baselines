-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(doy From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


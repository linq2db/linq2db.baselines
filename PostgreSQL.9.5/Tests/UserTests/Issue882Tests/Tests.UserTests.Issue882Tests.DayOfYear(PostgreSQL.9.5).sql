-- PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(Floor(Extract(doy From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


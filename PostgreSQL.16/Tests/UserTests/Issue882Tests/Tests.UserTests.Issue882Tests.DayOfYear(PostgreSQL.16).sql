-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Floor(Floor(Extract(doy From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


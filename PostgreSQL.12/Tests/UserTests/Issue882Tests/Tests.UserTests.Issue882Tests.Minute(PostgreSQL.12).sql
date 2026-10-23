-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Floor(Extract(minute From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


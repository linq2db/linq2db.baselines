-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Floor(Extract(minute From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Floor(Extract(hour From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


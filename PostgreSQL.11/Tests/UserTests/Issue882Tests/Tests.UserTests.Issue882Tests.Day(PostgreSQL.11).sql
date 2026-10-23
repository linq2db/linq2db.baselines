-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Floor(Extract(day From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


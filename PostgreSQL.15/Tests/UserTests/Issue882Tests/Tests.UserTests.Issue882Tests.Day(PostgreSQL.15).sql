-- PostgreSQL.15 PostgreSQL12
SELECT
	Floor(Floor(Extract(day From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


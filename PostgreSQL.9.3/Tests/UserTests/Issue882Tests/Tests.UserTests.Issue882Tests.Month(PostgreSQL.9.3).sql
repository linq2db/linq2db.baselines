-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Floor(Extract(month From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


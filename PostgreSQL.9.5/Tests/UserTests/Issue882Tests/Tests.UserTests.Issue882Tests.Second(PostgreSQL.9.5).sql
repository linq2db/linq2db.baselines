-- PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(Floor(Extract(second From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


-- PostgreSQL.18 PostgreSQL12
SELECT
	Floor(Floor(Extract(second From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


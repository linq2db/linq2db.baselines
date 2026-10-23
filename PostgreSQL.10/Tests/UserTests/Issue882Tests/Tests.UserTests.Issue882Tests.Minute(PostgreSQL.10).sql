-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(Floor(Extract(minute From t."DateTimeValue"))::Int::decimal % 7)::Int
FROM
	"LinqDataTypes" t


-- PostgreSQL.11 PostgreSQL
SELECT
	Floor(Extract(day From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


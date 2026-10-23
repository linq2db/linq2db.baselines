-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


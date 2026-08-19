-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


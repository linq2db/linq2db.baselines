-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(day From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


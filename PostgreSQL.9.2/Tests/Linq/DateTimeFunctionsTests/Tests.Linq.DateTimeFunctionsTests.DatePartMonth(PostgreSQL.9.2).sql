-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


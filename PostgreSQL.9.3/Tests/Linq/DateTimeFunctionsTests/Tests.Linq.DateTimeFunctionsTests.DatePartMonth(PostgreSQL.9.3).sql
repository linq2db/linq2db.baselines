-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


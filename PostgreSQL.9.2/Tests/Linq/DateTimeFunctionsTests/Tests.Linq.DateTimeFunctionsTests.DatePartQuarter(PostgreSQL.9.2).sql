-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(quarter From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


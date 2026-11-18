-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(quarter From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


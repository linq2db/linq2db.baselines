-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Extract(quarter From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


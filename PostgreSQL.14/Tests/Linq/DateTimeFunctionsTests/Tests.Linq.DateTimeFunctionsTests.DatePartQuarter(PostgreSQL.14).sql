-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	Floor(Extract(quarter From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


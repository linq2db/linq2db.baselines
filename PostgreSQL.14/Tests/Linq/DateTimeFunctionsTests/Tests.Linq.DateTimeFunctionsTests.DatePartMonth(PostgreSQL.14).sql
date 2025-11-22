-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


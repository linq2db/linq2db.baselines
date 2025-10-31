-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


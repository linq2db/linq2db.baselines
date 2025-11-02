-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(day From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


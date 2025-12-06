-- PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(minute From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


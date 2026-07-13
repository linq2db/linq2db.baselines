-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(minute From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


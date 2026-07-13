-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(minute From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


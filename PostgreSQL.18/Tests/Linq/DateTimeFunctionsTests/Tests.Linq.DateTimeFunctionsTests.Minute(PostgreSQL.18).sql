-- PostgreSQL.18 PostgreSQL12
SELECT
	Floor(Extract(minute From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


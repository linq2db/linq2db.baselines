-- PostgreSQL.19 PostgreSQL12
SELECT
	Floor(Extract(minute From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


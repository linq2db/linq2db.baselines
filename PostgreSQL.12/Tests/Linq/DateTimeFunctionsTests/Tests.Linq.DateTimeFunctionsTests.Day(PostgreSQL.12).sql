-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Extract(day From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


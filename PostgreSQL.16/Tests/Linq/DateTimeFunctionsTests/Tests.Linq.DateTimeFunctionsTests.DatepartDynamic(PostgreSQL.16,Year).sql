-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


-- PostgreSQL.13 PostgreSQL12

SELECT
	Floor(Extract(week From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


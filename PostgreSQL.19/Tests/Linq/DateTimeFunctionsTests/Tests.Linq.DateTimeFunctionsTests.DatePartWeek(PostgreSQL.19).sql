-- PostgreSQL.19 PostgreSQL12

SELECT
	Floor(Extract(week From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


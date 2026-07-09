-- PostgreSQL.19 PostgreSQL12

SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


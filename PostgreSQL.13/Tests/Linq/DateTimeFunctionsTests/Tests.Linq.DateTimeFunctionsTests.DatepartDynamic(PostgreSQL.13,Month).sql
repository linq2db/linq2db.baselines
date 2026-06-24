-- PostgreSQL.13 PostgreSQL13

SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


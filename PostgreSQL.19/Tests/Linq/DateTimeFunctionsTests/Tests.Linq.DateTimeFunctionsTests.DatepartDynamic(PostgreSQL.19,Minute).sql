-- PostgreSQL.19 PostgreSQL13

SELECT
	Floor(Extract(minute From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


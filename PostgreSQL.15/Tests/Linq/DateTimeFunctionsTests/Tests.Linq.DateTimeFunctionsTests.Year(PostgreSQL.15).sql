-- PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


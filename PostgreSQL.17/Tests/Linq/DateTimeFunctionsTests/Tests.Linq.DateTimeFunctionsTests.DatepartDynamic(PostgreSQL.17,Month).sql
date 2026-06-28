-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


-- PostgreSQL.18 PostgreSQL13

SELECT
	Floor(Extract(day From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


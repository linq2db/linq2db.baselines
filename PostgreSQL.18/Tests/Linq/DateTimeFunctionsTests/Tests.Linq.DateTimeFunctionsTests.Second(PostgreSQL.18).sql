-- PostgreSQL.18 PostgreSQL13

SELECT
	Floor(Extract(second From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


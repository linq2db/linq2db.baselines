-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	Floor(Extract(quarter From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


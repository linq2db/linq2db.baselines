-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(day From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


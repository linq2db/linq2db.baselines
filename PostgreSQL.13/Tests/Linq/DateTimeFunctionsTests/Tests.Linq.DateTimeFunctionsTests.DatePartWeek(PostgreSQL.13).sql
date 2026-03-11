-- PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(week From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


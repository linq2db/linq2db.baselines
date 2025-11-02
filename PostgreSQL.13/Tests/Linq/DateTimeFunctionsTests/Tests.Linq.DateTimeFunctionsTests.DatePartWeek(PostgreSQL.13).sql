-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(week From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


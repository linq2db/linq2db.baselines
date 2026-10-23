-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(week From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


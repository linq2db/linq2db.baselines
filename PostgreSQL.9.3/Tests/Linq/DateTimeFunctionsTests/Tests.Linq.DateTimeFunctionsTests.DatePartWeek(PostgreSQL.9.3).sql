-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(week From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


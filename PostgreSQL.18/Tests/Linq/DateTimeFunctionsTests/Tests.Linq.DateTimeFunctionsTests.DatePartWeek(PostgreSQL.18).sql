-- PostgreSQL.18 PostgreSQL13

SELECT
	Floor(Extract(week From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


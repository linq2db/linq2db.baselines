-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Extract(second From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


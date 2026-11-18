-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(second From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


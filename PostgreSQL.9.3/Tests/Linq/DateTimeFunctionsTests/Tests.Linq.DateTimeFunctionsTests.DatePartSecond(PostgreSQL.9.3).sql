-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(second From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


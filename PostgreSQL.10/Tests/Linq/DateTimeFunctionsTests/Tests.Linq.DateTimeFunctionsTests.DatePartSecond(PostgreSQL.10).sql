-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(Extract(second From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


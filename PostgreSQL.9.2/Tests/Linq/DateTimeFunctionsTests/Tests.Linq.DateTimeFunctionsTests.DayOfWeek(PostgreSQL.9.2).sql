-- PostgreSQL.9.2 PostgreSQL
SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


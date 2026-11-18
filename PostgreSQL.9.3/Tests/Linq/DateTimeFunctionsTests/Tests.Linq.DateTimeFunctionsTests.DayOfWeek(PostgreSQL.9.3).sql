-- PostgreSQL.9.3 PostgreSQL
SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


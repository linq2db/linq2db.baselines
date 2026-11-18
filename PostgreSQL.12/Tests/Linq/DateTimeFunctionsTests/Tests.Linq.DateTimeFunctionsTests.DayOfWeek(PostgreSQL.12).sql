-- PostgreSQL.12 PostgreSQL12
SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


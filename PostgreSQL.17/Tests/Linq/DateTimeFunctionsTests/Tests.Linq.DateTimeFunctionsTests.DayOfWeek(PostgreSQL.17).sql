-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


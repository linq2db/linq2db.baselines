-- PostgreSQL.13 PostgreSQL

SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


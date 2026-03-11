-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


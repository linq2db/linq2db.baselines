-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int + 1
FROM
	"LinqDataTypes" t


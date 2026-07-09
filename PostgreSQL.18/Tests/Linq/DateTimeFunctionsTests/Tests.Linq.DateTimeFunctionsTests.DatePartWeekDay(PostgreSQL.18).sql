-- PostgreSQL.18 PostgreSQL13

SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int + 1
FROM
	"LinqDataTypes" t


BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int + 1
FROM
	"LinqDataTypes" t


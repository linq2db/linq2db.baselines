BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int + 1
FROM
	"LinqDataTypes" t


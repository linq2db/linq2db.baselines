BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(dow From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


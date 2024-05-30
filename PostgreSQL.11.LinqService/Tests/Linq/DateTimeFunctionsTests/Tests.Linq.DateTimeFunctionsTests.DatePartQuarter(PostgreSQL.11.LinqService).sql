BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(quarter From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(quarter From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


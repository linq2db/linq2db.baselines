BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(hour From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


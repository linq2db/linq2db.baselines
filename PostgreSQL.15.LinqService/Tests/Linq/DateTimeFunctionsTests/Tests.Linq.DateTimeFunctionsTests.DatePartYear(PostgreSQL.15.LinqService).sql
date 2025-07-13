BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


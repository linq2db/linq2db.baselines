BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Floor(Extract(month From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


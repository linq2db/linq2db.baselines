BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(minute From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t


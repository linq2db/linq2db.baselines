BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	make_timestamp(Floor(Extract(year From t."DateTimeValue"))::Int, 10, 1, 0, 0, 0)
FROM
	"LinqDataTypes" t


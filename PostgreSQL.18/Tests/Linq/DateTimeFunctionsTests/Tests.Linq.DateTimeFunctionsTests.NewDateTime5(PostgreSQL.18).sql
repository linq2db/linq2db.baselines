-- PostgreSQL.18 PostgreSQL

SELECT
	make_timestamp(Floor(Extract(year From t."DateTimeValue"))::Int + 1, 10, 1, 0, 0, 0)
FROM
	"LinqDataTypes" t


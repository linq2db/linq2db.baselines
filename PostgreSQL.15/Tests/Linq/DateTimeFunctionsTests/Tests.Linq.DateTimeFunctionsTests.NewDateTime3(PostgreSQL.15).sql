-- PostgreSQL.15 PostgreSQL

SELECT
	make_timestamp(Floor(Extract(year From t."DateTimeValue"))::Int, 10, 1, 20, 35, 44::Float)
FROM
	"LinqDataTypes" t


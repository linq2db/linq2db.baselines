-- PostgreSQL.18 PostgreSQL

SELECT
	make_timestamp(Floor(Extract(year From p."DateTimeValue"))::Int, 10, 1, 20, 35, 44::Float)
FROM
	"LinqDataTypes" p


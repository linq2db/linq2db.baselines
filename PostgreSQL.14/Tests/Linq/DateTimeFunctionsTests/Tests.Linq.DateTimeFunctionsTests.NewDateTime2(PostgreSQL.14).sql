-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	make_timestamp(Floor(Extract(year From p."DateTimeValue"))::Int, 10, 1, 0, 0, 0)
FROM
	"LinqDataTypes" p


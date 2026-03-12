-- PostgreSQL.13 PostgreSQL

SELECT DISTINCT
	Floor(Extract(year From g_1."DateTimeValue"))::Int
FROM
	"LinqDataTypes" g_1


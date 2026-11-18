-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT DISTINCT
	Floor(Extract(year From g_1."DateTimeValue"))::Int
FROM
	"LinqDataTypes" g_1


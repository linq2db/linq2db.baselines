-- PostgreSQL.18 PostgreSQL13

SELECT DISTINCT
	Floor(Extract(year From g_1."DateTimeValue"))::Int
FROM
	"LinqDataTypes" g_1


BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(year from p."DateTimeValue")) as int)
FROM
	"LinqDataTypes" p


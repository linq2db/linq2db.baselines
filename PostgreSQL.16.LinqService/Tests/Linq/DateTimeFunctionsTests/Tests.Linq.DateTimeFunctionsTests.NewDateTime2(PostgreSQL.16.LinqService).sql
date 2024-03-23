BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(year from p."DateTimeValue")) as int)
FROM
	"LinqDataTypes" p


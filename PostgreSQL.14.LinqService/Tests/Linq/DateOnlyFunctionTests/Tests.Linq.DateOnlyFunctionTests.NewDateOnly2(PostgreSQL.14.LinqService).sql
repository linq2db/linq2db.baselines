BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(year From p."DateTimeValue"))::Int
FROM
	"LinqDataTypes" p


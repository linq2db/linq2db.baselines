BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ID"
FROM
	"LinqDataTypes" p
WHERE
	LENGTH(p."ID"::SmallInt::text) > 0


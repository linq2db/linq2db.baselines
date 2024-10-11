BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ID"::SmallInt
FROM
	"LinqDataTypes" p
WHERE
	Length(p."ID"::SmallInt::text) > 0


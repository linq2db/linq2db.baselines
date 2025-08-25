BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p."ID"
FROM
	"LinqDataTypes" p
WHERE
	Length(p."ID"::SmallInt::text) > 0


-- PostgreSQL.18 PostgreSQL

SELECT
	p."ID"::SmallInt::text
FROM
	"LinqDataTypes" p
WHERE
	Length(p."ID"::SmallInt::text) > 0


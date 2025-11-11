-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ID"::SmallInt::text
FROM
	"LinqDataTypes" p
WHERE
	Length(p."ID"::SmallInt::text) > 0


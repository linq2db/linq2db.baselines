-- PostgreSQL.13 PostgreSQL13

SELECT
	p."ID"::SmallInt::text
FROM
	"LinqDataTypes" p
WHERE
	Length(p."ID"::SmallInt::text) > 0


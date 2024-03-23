BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ID"
FROM
	"LinqDataTypes" p
WHERE
	Length(Cast(Cast(p."ID" as SmallInt) as text)) > 0


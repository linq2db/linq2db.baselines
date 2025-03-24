BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	RTRIM(REPLACE(p."MoneyValue"::text, ',', '.'), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(p."MoneyValue"::text) > 0


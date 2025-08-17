BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	RTRIM(Replace(p."MoneyValue"::text, ',', '.'), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(p."MoneyValue"::text) > 0


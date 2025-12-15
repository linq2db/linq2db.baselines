-- PostgreSQL.18 PostgreSQL

SELECT
	RTRIM(Replace(p."MoneyValue"::text, ',', '.'), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(p."MoneyValue"::text) > 0


-- PostgreSQL.13 PostgreSQL13

SELECT
	RTRIM(Replace(p."MoneyValue"::text, ',', '.'), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(p."MoneyValue"::text) > 0


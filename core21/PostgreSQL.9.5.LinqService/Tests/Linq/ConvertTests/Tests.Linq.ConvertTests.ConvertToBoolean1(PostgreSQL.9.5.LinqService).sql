BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t."MoneyValue" <> 0 THEN True
		ELSE False
	END
FROM
	"LinqDataTypes" t
WHERE
	t."MoneyValue" <> 0


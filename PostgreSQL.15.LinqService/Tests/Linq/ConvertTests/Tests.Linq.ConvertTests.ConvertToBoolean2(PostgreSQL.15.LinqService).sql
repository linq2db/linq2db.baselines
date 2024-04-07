BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN t."MoneyValue" <> 4.5
			THEN True
		ELSE False
	END
FROM
	"LinqDataTypes" t
WHERE
	t."MoneyValue" = 4.5


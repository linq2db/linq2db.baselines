BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t."MoneyValue" - 4.5 <> 0
			THEN True
		ELSE False
	END
FROM
	"LinqDataTypes" t
WHERE
	CASE
		WHEN t."MoneyValue" <> 4.5
			THEN True
		ELSE False
	END = False


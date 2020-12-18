BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	CASE
		WHEN t."MoneyValue" <> 0 THEN True
		ELSE False
	END
FROM
	"LinqDataTypes" t
WHERE
	CASE
		WHEN t."MoneyValue" <> 0 THEN True
		ELSE False
	END = True


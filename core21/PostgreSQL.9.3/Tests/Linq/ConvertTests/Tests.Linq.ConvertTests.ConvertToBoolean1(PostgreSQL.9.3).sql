BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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


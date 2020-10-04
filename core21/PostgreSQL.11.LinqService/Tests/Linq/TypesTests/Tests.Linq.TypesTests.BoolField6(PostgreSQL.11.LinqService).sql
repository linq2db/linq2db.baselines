BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	(CASE
		WHEN t."BoolValue" = False
			THEN True
		ELSE False
	END = True AND CASE
		WHEN t."BoolValue" = False
			THEN True
		ELSE False
	END IS NOT NULL)


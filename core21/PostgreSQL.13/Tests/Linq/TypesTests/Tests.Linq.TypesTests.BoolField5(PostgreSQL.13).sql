BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	(CASE
		WHEN t."BoolValue" = False
			THEN True
		ELSE False
	END = False AND CASE
		WHEN t."BoolValue" = False
			THEN True
		ELSE False
	END IS NOT NULL)


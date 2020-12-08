BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t."MoneyValue" - 4.5 <> 0
			THEN True
		ELSE False
	END
FROM
	"LinqDataTypes" t
WHERE
	(NOT (t."MoneyValue" - 4.5 <> 0))


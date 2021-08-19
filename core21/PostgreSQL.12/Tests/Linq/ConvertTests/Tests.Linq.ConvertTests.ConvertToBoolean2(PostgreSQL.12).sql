BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t."MoneyValue" - 4.5 <> 0
			THEN True
		ELSE False
	END
FROM
	"LinqDataTypes" t
WHERE
	(t."MoneyValue" = 4.5)


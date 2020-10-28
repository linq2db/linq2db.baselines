BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 2) AND p."MoneyValue" <> Round(p."MoneyValue", 2)
			THEN Round(p."MoneyValue" / 2, 2) * 2
		ELSE Round(p."MoneyValue", 2)
	END
FROM
	"LinqDataTypes" p
WHERE
	(CASE
		WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 2) AND p."MoneyValue" <> Round(p."MoneyValue", 2)
			THEN Round(p."MoneyValue" / 2, 2) * 2
		ELSE Round(p."MoneyValue", 2)
	END <> 0 OR CASE
		WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 2) AND p."MoneyValue" <> Round(p."MoneyValue", 2)
			THEN Round(p."MoneyValue" / 2, 2) * 2
		ELSE Round(p."MoneyValue", 2)
	END IS NULL) AND
	(CASE
		WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 2) AND p."MoneyValue" <> Round(p."MoneyValue", 2)
			THEN Round(p."MoneyValue" / 2, 2) * 2
		ELSE Round(p."MoneyValue", 2)
	END <> 7 OR CASE
		WHEN p."MoneyValue" * 2 = Round(p."MoneyValue" * 2, 2) AND p."MoneyValue" <> Round(p."MoneyValue", 2)
			THEN Round(p."MoneyValue" / 2, 2) * 2
		ELSE Round(p."MoneyValue", 2)
	END IS NULL)


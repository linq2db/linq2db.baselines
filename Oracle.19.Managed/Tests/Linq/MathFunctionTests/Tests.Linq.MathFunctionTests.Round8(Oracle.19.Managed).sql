-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	CASE
		WHEN CAST(t."MoneyValue" AS Float) - FLOOR(CAST(t."MoneyValue" AS Float)) = 0.5D AND MOD(FLOOR(CAST(t."MoneyValue" AS Float)), 2) = 0
			THEN FLOOR(CAST(t."MoneyValue" AS Float))
		ELSE ROUND(CAST(t."MoneyValue" AS Float), 0)
	END <> 0D


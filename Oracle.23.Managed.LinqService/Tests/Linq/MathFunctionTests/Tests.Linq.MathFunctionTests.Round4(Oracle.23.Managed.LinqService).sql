BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	CASE
		WHEN CAST(t."MoneyValue" AS Float) * 2 = ROUND(CAST(t."MoneyValue" AS Float) * 2, 1) AND CAST(t."MoneyValue" AS Float) <> ROUND(CAST(t."MoneyValue" AS Float), 1)
			THEN ROUND(CAST(t."MoneyValue" AS Float) / 2, 1) * 2
		ELSE ROUND(CAST(t."MoneyValue" AS Float), 1)
	END <> 0D


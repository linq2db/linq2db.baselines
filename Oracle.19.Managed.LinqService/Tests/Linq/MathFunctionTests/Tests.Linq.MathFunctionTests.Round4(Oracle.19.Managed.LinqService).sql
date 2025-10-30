BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST(p."MoneyValue" AS Float) * 2 = ROUND(CAST(p."MoneyValue" AS Float) * 2, 1) AND CAST(p."MoneyValue" AS Float) <> ROUND(CAST(p."MoneyValue" AS Float), 1)
					THEN ROUND(CAST(p."MoneyValue" AS Float) / 2, 1) * 2
				ELSE ROUND(CAST(p."MoneyValue" AS Float), 1)
			END as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0D


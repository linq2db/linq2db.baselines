BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t."c1" * 2 = ROUND(t."c1" * 2, 5) AND t."c1" <> ROUND(t."c1", 5)
			THEN ROUND(t."c1" / 2, 5) * 2
		ELSE ROUND(t."c1", 5)
	END
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


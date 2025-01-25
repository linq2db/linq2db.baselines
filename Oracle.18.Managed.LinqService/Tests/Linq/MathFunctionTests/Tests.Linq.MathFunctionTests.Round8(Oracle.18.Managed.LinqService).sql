BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST(t."MoneyValue" AS Float) - Floor(CAST(t."MoneyValue" AS Float)) = 0.5D AND MOD(Floor(CAST(t."MoneyValue" AS Float)), 2) = 0D
					THEN Floor(CAST(t."MoneyValue" AS Float))
				ELSE Round(CAST(t."MoneyValue" AS Float), 0)
			END as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0D


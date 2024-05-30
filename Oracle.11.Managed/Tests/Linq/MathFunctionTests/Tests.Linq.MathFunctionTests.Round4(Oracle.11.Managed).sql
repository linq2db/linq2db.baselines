BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t_1."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST(t."MoneyValue" AS Float) * 2 = Round(CAST(t."MoneyValue" AS Float) * 2, 1) AND CAST(t."MoneyValue" AS Float) <> Round(CAST(t."MoneyValue" AS Float), 1)
					THEN Round(CAST(t."MoneyValue" AS Float) / 2, 1) * 2
				ELSE Round(CAST(t."MoneyValue" AS Float), 1)
			END as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0D


BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t_1."c1" * 2 = Round(t_1."c1" * 2, 5) AND t_1."c1" <> Round(t_1."c1", 5)
			THEN Round(t_1."c1" / 2, 5) * 2
		ELSE Round(t_1."c1", 5)
	END
FROM
	(
		SELECT
			CASE
				WHEN Cast(t."MoneyValue" as Float) * 2 = Round(Cast(t."MoneyValue" as Float) * 2, 1) AND Cast(t."MoneyValue" as Float) <> Round(Cast(t."MoneyValue" as Float), 1)
					THEN Round(Cast(t."MoneyValue" as Float) / 2, 1) * 2
				ELSE Round(Cast(t."MoneyValue" as Float), 1)
			END as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0D


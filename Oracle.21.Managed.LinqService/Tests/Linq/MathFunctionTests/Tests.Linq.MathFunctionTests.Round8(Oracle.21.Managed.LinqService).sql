BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			CASE
				WHEN Cast(t."MoneyValue" as Float) - Floor(Cast(t."MoneyValue" as Float)) = 0.5D AND MOD(Floor(Cast(t."MoneyValue" as Float)), 2) = 0D
					THEN Floor(Cast(t."MoneyValue" as Float))
				ELSE Round(Cast(t."MoneyValue" as Float), 0)
			END as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0D


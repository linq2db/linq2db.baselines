BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN Cast(p.MoneyValue as Float) - Floor(Cast(p.MoneyValue as Float)) = 0.5D AND MOD(Floor(Cast(p.MoneyValue as Float)), 2D) = 0D
					THEN Floor(Cast(p.MoneyValue as Float))
				ELSE Round(Cast(p.MoneyValue as Float), 0)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	(t.c1 IS NULL OR t.c1 <> 0D)


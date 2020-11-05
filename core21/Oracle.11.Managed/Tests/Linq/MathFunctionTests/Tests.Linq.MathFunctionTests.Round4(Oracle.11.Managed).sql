BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN Cast(p.MoneyValue as Float) * 2D = Round(Cast(p.MoneyValue as Float) * 2D, 1) AND Cast(p.MoneyValue as Float) <> Round(Cast(p.MoneyValue as Float), 1)
					THEN Round(Cast(p.MoneyValue as Float) / 2D, 1) * 2D
				ELSE Round(Cast(p.MoneyValue as Float), 1)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	(t.c1 <> 0D OR t.c1 IS NULL)


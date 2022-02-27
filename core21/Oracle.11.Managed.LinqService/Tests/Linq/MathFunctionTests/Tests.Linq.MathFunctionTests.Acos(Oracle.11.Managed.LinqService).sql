BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Acos(Cast(p.MoneyValue as Float) / 15D) * 15D) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0.10000000000000001D


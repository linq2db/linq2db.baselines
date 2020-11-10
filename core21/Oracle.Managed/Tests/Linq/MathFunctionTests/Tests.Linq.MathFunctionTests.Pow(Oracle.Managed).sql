BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Power(Cast(p.MoneyValue as Float), 3D)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	(t.c1 <> 0D OR t.c1 IS NULL)


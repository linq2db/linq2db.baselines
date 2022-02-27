BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t.c1
FROM
	(
		SELECT
			Cast(p.MoneyValue as Float) * 57.295779513082323D as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0.10000000000000001D


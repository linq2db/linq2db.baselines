BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.c1
FROM
	(
		SELECT
			Cast(Floor(Cast(t.MoneyValue as Float)) as Int) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0


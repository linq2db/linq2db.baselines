BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.c1
FROM
	(
		SELECT
			Cast(Floor(t.MoneyValue) as Number(3)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0


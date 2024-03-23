BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	p_1."c1"
FROM
	(
		SELECT
			Cast(Floor(p."MoneyValue") as Int) as "c1"
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1."c1" > 0


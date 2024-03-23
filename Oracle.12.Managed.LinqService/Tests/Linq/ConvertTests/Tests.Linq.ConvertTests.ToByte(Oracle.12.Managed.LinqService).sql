BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p_1."c1"
FROM
	(
		SELECT
			Cast(Floor(p."MoneyValue") as Number(3)) as "c1"
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1."c1" > 0


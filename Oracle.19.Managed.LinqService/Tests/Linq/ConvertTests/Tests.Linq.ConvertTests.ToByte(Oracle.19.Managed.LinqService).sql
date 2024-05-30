BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p_1."c1"
FROM
	(
		SELECT
			CAST(Floor(p."MoneyValue") AS Number(3)) as "c1"
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1."c1" > 0


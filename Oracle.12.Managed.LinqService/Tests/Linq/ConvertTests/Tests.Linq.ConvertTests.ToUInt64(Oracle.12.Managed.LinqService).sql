BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p_1."c1"
FROM
	(
		SELECT
			CAST(Floor(p."MoneyValue") AS Decimal) as "c1"
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1."c1" > 0


BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p_1."c1"
FROM
	(
		SELECT
			CAST(Floor(CAST(p."MoneyValue" AS Float)) AS Int) as "c1"
		FROM
			"LinqDataTypes" p
	) p_1
WHERE
	p_1."c1" > 0


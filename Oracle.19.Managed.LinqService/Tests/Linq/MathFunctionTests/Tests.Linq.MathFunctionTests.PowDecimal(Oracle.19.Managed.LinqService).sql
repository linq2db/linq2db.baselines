BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			Floor(CAST(Power(CAST(p."MoneyValue" AS Float), CAST(3 AS Float)) AS Decimal(28, 10))) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0


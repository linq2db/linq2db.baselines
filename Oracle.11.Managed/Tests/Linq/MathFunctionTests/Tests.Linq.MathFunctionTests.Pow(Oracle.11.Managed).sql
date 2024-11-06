BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."c1"
FROM
	(
		SELECT
			Floor(Power(CAST(p."MoneyValue" AS Float), 3D)) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0D


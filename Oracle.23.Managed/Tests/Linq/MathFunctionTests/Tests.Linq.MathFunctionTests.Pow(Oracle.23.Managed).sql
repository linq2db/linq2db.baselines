BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Floor(Power(CAST(t."MoneyValue" AS Float), 3D)) as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0D


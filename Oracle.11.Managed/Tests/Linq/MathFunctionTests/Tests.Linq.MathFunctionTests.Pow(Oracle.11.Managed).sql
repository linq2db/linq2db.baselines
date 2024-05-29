BeforeExecute
-- Oracle.11.Managed Oracle11

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


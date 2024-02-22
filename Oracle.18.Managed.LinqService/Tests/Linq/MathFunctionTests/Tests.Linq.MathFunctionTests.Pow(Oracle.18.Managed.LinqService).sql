BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Floor(Power(Cast(t."MoneyValue" as Float), 3D)) as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1."c1" <> 0D OR t_1."c1" IS NULL)


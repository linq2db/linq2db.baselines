BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Floor((Cos(CAST(t."MoneyValue" AS Float) / 15D) / Sin(CAST(t."MoneyValue" AS Float) / 15D)) * 15D) as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0.10000000000000001D


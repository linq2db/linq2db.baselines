BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Floor(Cos(Cast(t."MoneyValue" as Float) / 15D) / Sin(Cast(t."MoneyValue" as Float) / 15D) * 15D) as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0.10000000000000001D


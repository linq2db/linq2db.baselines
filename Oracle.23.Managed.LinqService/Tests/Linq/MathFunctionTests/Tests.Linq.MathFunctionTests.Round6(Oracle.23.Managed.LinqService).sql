BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Round(Cast(t."MoneyValue" as Float), 0) as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	(t_1."c1" <> 0D OR t_1."c1" IS NULL)


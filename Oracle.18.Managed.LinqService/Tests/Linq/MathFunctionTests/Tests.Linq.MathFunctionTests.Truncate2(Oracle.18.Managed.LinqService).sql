BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Trunc(CAST(-t."MoneyValue" AS Float), 0) as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0.10000000000000001D


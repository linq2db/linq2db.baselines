BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			Abs(p."MoneyValue") as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" > 0


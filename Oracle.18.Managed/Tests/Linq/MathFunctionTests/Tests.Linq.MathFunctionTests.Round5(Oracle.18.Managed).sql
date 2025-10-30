BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			ROUND(p."MoneyValue") as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0


BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			ROUND(CAST(p."MoneyValue" AS Float)) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0D


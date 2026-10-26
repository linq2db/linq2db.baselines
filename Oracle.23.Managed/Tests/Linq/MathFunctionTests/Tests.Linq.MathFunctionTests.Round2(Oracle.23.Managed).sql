-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t."c1"
FROM
	(
		SELECT
			CASE
				WHEN CAST(p."MoneyValue" AS Float) - FLOOR(CAST(p."MoneyValue" AS Float)) = 0.5D
					THEN ROUND(CAST(p."MoneyValue" AS Float) * 0.5D, 0) * 2
				ELSE ROUND(CAST(p."MoneyValue" AS Float), 0)
			END as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0D


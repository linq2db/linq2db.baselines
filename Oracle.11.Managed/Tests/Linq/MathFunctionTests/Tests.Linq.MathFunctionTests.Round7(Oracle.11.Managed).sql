-- Oracle.11.Managed Oracle11
SELECT
	t."c1"
FROM
	(
		SELECT
			CASE
				WHEN p."MoneyValue" - FLOOR(p."MoneyValue") = 0.5D THEN ROUND(p."MoneyValue" * 0.5D, 0) * 2
				ELSE ROUND(p."MoneyValue", 0)
			END as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0


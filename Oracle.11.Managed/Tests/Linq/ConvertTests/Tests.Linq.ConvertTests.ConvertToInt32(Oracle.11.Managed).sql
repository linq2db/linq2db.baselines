-- Oracle.11.Managed Oracle11
SELECT
	p."c1"
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN t."MoneyValue" - FLOOR(t."MoneyValue") = 0.5D THEN ROUND(t."MoneyValue" * 0.5D, 0) * 2
				ELSE ROUND(t."MoneyValue", 0)
			END) AS Int) as "c1"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p."c1" > 0


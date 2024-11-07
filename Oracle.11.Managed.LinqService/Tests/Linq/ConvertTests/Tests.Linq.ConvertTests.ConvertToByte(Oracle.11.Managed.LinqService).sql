BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."c1"
FROM
	(
		SELECT
			CAST(Floor(CASE
				WHEN t."MoneyValue" - FLOOR(t."MoneyValue") = 0.5D AND MOD(FLOOR(t."MoneyValue"), 2) = 0
					THEN FLOOR(t."MoneyValue")
				ELSE ROUND(t."MoneyValue", 0)
			END) AS Number(3)) as "c1"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p."c1" > 0


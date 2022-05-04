BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."c1"
FROM
	(
		SELECT
			Floor(Atan2(Cast(p."MoneyValue" as Float) / 15D, 0D) * 15D) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	(t."c1" <> 0.10000000000000001D OR t."c1" IS NULL)


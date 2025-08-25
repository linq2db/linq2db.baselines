BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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


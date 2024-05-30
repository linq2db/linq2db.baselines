BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Floor(Log(10D, CAST(t."MoneyValue" AS Float))) as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0.10000000000000001D


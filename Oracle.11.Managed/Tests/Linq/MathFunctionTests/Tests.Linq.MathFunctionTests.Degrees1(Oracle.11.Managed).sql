BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t_1."c1"
FROM
	(
		SELECT
			Floor(t."MoneyValue" * 57.29577951308237993927443245) as "c1"
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	t_1."c1" <> 0.1


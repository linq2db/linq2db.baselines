BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."c1"
FROM
	(
		SELECT
			Floor(p."MoneyValue" * 57.29577951308237993927443245) as "c1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."c1" <> 0.1


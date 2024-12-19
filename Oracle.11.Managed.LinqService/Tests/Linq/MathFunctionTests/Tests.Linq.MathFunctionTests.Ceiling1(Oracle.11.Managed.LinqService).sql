BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Ceil(-(p."MoneyValue" + 1)) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0


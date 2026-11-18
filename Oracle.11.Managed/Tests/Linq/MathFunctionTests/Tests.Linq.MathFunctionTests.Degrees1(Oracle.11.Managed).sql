-- Oracle.11.Managed Oracle11
SELECT
	t."Value_1"
FROM
	(
		SELECT
			Floor(p."MoneyValue" * 57.295779513082320876798154814) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.1


BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p."MoneyValue"
FROM
	(
		SELECT
			CASE
				WHEN t."BoolValue" = 0 THEN 1
				ELSE 0
			END as "b",
			t."MoneyValue"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p."b" = 0


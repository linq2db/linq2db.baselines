-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Value_1"
FROM
	(
		SELECT
			Trunc(CAST(-p."MoneyValue" AS Float), 0) as "Value_1"
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Value_1" <> 0.10000000000000001D


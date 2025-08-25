BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."c1"
FROM
	(
		SELECT
			CAST(t."MoneyValue" AS Float) as "c1"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p."c1" > 0D


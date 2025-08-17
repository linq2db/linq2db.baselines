BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."c1"
FROM
	(
		SELECT
			CAST(t."MoneyValue" AS Real) as "c1"
		FROM
			"LinqDataTypes" t
	) p
WHERE
	p."c1" > 0


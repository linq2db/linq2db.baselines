BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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


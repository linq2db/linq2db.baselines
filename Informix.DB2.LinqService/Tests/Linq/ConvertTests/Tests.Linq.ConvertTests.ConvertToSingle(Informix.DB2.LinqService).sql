BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.c1
FROM
	(
		SELECT
			t.MoneyValue::Real as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0


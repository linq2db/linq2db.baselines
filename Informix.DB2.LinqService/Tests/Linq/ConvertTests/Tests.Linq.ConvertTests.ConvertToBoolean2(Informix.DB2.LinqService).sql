BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.c1
FROM
	(
		SELECT
			t.MoneyValue <> 4.5 as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	NOT p.c1


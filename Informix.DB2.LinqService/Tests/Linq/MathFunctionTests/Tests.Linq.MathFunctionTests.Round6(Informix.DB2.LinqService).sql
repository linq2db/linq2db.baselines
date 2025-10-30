BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.c1
FROM
	(
		SELECT
			ROUND(p.MoneyValue::Float) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0


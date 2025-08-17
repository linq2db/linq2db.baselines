BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.Value_1
FROM
	(
		SELECT
			Floor(LogN(p.MoneyValue::Float) / 0.69314718055994529) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> 0.10000000000000001


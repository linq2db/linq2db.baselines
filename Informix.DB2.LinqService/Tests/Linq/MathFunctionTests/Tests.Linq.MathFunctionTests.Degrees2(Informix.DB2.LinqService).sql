BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	Floor(t.Value_1)
FROM
	(
		SELECT
			p.MoneyValue::Float * 57.295779513082323 as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> 0.10000000000000001


BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.Value_1
FROM
	(
		SELECT
			Trunc((-p.MoneyValue)::Float, 0) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> 0.10000000000000001


BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Value_1
FROM
	(
		SELECT
			p.MoneyValue::Int::Float * 57.295779513082323 as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1::Float <> 0.10000000000000001


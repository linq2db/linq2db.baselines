-- Informix.DB2 Informix

SELECT
	t.Value_1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue > 0 THEN 1
				WHEN p.MoneyValue < 0 THEN -1
				ELSE 0
			END as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> 0


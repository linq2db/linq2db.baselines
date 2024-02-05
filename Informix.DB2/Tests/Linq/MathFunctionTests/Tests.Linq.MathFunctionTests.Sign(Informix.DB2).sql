BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue > 0 THEN 1
				WHEN p.MoneyValue < 0 THEN -1
				ELSE 0
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0


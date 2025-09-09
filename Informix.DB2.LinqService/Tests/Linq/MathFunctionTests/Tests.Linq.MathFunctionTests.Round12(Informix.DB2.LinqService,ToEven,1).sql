BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.MoneyValue
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue * 2 = ROUND(p.MoneyValue * 2, 1) AND p.MoneyValue <> ROUND(p.MoneyValue, 1)
					THEN ROUND(p.MoneyValue / 2, 1) * 2
				ELSE ROUND(p.MoneyValue, 1)
			END as c1,
			p.MoneyValue
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0 AND t.c1 <> 7


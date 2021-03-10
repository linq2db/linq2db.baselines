BeforeExecute
-- Informix.DB2 Informix

SELECT
	Round(p.MoneyValue, 1)
FROM
	LinqDataTypes p
WHERE
	Round(p.MoneyValue, 1) <> 0


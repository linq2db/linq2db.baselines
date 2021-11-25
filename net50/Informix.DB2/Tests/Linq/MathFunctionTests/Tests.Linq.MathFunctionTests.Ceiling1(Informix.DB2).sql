BeforeExecute
-- Informix.DB2 Informix

SELECT
	Ceil(-(p.MoneyValue + 1))
FROM
	LinqDataTypes p
WHERE
	Ceil(-(p.MoneyValue + 1)) <> 0


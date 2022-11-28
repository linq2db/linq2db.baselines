BeforeExecute
-- Informix.DB2 Informix

SELECT
	Trunc(p.MoneyValue, 0)
FROM
	LinqDataTypes p
WHERE
	Trunc(p.MoneyValue, 0) <> 0.1


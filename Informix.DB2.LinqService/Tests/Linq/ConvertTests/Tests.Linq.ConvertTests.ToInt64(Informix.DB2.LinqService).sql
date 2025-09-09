BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue::BigInt > 0


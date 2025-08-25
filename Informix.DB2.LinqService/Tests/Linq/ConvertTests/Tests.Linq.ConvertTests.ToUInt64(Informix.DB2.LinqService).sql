BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue::Decimal > 0


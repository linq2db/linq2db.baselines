BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue::Decimal > 0


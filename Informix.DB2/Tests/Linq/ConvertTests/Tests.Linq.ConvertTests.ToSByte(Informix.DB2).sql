-- Informix.DB2 Informix

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue::SmallInt > 0


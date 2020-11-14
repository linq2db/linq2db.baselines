BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(p.MoneyValue as BigInt)
FROM
	LinqDataTypes p
WHERE
	Cast(p.MoneyValue as BigInt) > 0


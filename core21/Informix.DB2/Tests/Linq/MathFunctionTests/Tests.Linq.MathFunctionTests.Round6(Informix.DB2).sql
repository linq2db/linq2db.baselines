BeforeExecute
-- Informix.DB2 Informix

SELECT
	Round(Cast(p.MoneyValue as Float), 0)
FROM
	LinqDataTypes p
WHERE
	(Round(Cast(p.MoneyValue as Float), 0) <> 0 OR Round(Cast(p.MoneyValue as Float), 0) IS NULL)


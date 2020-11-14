BeforeExecute
-- Informix.DB2 Informix

SELECT
	Round(Cast(t.MoneyValue as Float), 0)
FROM
	LinqDataTypes t
WHERE
	(Round(Cast(t.MoneyValue as Float), 0) <> 0 OR Round(Cast(t.MoneyValue as Float), 0) IS NULL)


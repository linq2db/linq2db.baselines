BeforeExecute
-- Informix.DB2 Informix

SELECT
	Trunc(Cast((-t.MoneyValue) as Float), 0)
FROM
	LinqDataTypes t
WHERE
	Trunc(Cast((-t.MoneyValue) as Float), 0) <> 0.10000000000000001


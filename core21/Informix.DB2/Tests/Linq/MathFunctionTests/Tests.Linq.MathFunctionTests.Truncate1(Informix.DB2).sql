BeforeExecute
-- Informix.DB2 Informix

SELECT
	Trunc(t.MoneyValue, 0)
FROM
	LinqDataTypes t
WHERE
	(Trunc(t.MoneyValue, 0) <> 0.1 OR Trunc(t.MoneyValue, 0) IS NULL)


BeforeExecute
-- Informix.DB2 Informix

SELECT
	Floor(t.MoneyValue * 57.29577951308237993927443245)
FROM
	LinqDataTypes t
WHERE
	Floor(t.MoneyValue * 57.29577951308237993927443245) <> 0.1


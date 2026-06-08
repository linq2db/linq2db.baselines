-- Informix.DB2 Informix

SELECT
	t.ID,
	t.IntValue
FROM
	LinqDataTypes t
WHERE
	BitAnd(t.IntValue, 1) <> 0


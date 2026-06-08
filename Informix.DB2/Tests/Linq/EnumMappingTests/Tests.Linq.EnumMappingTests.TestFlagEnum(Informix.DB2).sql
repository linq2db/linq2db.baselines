-- Informix.DB2 Informix

SELECT
	t.ID,
	t.IntValue
FROM
	TestTable5 t
WHERE
	BitAnd(t.IntValue, 1) <> 0


-- Informix.DB2 Informix

SELECT
	t.Value1 || Nvl(t.Value2, '')
FROM
	StringConcatNullEntity t
ORDER BY
	t.ID

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2
FROM
	StringConcatNullEntity t1


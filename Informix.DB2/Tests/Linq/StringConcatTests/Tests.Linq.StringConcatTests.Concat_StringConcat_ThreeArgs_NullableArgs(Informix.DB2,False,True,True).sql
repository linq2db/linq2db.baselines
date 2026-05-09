-- Informix.DB2 Informix

SELECT
	t.Value1 || Nvl(t.Value2, '') || Nvl(t.Value3, '')
FROM
	StringConcatThreeNullEntity t
ORDER BY
	t.ID

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2,
	t1.Value3
FROM
	StringConcatThreeNullEntity t1


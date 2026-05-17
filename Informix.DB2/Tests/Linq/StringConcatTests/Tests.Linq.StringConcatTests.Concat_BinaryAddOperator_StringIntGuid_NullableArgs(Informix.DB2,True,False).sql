-- Informix.DB2 Informix

SELECT
	Nvl(t.Value1, '') || To_Char(t.Value2) || Lower(To_Char(t.Value3))
FROM
	StringConcatIntGuidNullEntity t
ORDER BY
	t.ID

-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.Value1,
	t1.Value2,
	t1.Value3
FROM
	StringConcatIntGuidNullEntity t1


-- Informix.DB2 Informix

SELECT
	LTRIM(t.VarCharColumn, 'ab')
FROM
	StringTrimTable t
ORDER BY
	t.Id


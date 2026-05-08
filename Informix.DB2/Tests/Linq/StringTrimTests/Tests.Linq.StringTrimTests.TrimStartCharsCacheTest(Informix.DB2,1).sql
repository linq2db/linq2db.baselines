-- Informix.DB2 Informix

SELECT
	LTRIM(t.VarCharColumn, '.+')
FROM
	StringTrimTable t


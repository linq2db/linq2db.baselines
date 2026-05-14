-- Informix.DB2 Informix

SELECT
	LTRIM(t.VarCharColumn, '.')
FROM
	StringTrimTable t

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.CharColumn,
	t1.NCharColumn,
	t1.VarCharColumn,
	t1.NVarCharColumn
FROM
	StringTrimTable t1


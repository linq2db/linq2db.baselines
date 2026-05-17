-- Informix.DB2 Informix

SELECT
	RTRIM(Nvl(t.VarCharColumn, '') || '...', '.')
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


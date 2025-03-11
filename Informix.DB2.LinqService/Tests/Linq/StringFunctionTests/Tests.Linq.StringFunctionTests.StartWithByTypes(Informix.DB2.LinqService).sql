BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.CharColumn,
	t.NCharColumn,
	t.VarCharColumn,
	t.NVarCharColumn
FROM
	StringTypesTable t
WHERE
	t.CharColumn LIKE 'some%' ESCAPE '~' AND
	t.NCharColumn LIKE 'some%' ESCAPE '~' AND
	t.VarCharColumn LIKE 'some%' ESCAPE '~' AND
	t.NVarCharColumn LIKE 'some%' ESCAPE '~'


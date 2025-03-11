BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	StringTypesTable t
WHERE
	t.CharColumn LIKE 'some%' ESCAPE '~' AND
	t.NCharColumn LIKE 'some%' ESCAPE '~' AND
	t.VarCharColumn LIKE 'some%' ESCAPE '~' AND
	t.NVarCharColumn LIKE 'some%' ESCAPE '~'


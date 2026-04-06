-- DuckDB
DECLARE $str NVarChar(5) -- String
SET     $str = 'some%'
DECLARE $str_1 NVarChar(5) -- String
SET     $str_1 = 'some%'
DECLARE $str_2 NVarChar(5) -- String
SET     $str_2 = 'some%'
DECLARE $str_3 NVarChar(5) -- String
SET     $str_3 = 'some%'

SELECT
	t.Id,
	t.CharColumn,
	t.NCharColumn,
	t.VarCharColumn,
	t.NVarCharColumn
FROM
	StringTypesTable t
WHERE
	t.CharColumn LIKE CAST($str AS VARCHAR) ESCAPE '~' AND
	t.NCharColumn LIKE CAST($str_1 AS VARCHAR) ESCAPE '~' AND
	t.VarCharColumn LIKE CAST($str_2 AS VARCHAR) ESCAPE '~' AND
	t.NVarCharColumn LIKE CAST($str_3 AS VARCHAR) ESCAPE '~'


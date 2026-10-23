-- YDB Ydb
DECLARE $str Text(5) -- AnsiStringFixedLength
SET     $str = 'some%'u
DECLARE $str_1 Text(5) -- StringFixedLength
SET     $str_1 = 'some%'u
DECLARE $str_2 Text(5) -- AnsiString
SET     $str_2 = 'some%'u
DECLARE $str_3 Text(5) -- String
SET     $str_3 = 'some%'u

SELECT
	t.Id as Id,
	t.CharColumn as CharColumn,
	t.NCharColumn as NCharColumn,
	t.VarCharColumn as VarCharColumn,
	t.NVarCharColumn as NVarCharColumn
FROM
	StringTypesTable t
WHERE
	t.CharColumn LIKE $str ESCAPE '~'s AND
	t.NCharColumn LIKE $str_1 ESCAPE '~'s AND
	t.VarCharColumn LIKE $str_2 ESCAPE '~'s AND
	t.NVarCharColumn LIKE $str_3 ESCAPE '~'s


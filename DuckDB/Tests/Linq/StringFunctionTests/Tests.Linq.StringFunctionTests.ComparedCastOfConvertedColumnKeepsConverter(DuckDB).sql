-- DuckDB
DECLARE $Code VarChar(4) -- AnsiString
SET     $Code = 'x:A%'

SELECT
	COUNT(*)
FROM
	PrefixedCodeTable t
WHERE
	CAST(t.Code AS VARCHAR) LIKE $Code

-- DuckDB
DECLARE $bound VarChar(3) -- AnsiString
SET     $bound = 'x:A'

SELECT
	COUNT(*)
FROM
	PrefixedCodeTable t
WHERE
	CAST(t.Code AS VARCHAR) = $bound


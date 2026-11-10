-- DuckDB
DECLARE $Code VarChar(4) -- AnsiString
SET     $Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Coalesce(t.Code, '') || Coalesce(t.Title, '')) LIKE $Code

-- DuckDB
DECLARE $bound VarChar(4) -- AnsiString
SET     $bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Coalesce(t.Code, '') || Coalesce(t.Title, '')) = $bound

-- DuckDB
DECLARE $bound VarChar(4) -- AnsiString
SET     $bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	PrefixedCodeWithTitleTable t
WHERE
	(Coalesce(t.Code, '') || Coalesce(t.Title, '')) = $bound


-- DuckDB
DECLARE $bound VarChar(5) -- AnsiString
SET     $bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	(p.Conv || p.Title) = $bound

-- DuckDB
DECLARE $bound VarChar(5) -- AnsiString
SET     $bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	$bound = (p.Conv || p.Title)

-- DuckDB
SELECT
	COUNT(*)
FROM
	ConvertedConcatTitleRow p
WHERE
	(p.Conv || p.Title) IN ('x:c1T')


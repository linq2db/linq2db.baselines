-- DuckDB
DECLARE $s NVarChar(7) -- String
SET     $s = '123[456'

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND CAST($s AS VARCHAR) LIKE '%~[%' ESCAPE '~'

-- DuckDB
DECLARE $s NVarChar(7) -- String
SET     $s = '123[456'

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND CAST($s AS VARCHAR) NOT LIKE '%~[%' ESCAPE '~'


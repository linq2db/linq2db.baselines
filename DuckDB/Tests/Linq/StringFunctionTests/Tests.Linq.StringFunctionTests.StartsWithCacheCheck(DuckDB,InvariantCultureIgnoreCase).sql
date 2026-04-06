-- DuckDB

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

-- DuckDB
DECLARE $nameToCheck NVarChar(4) -- String
SET     $nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName ILIKE CAST($nameToCheck AS VARCHAR) ESCAPE '~' AND
	p.PersonID = 1

-- DuckDB
DECLARE $nameToCheck NVarChar(4) -- String
SET     $nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName NOT ILIKE CAST($nameToCheck AS VARCHAR) ESCAPE '~' AND
	p.PersonID = 1


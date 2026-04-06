-- DuckDB

DELETE FROM
	CollatedTable t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $CaseSensitive NVarChar(10) -- String
SET     $CaseSensitive = 'TestString'
DECLARE $CaseInsensitive NVarChar(10) -- String
SET     $CaseInsensitive = 'TestString'

INSERT INTO CollatedTable
(
	Id,
	CaseSensitive,
	CaseInsensitive
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($CaseSensitive AS VARCHAR),
	CAST($CaseInsensitive AS VARCHAR)
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE '%stString' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE '%stString' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE '%ststring' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE '%ststring' ESCAPE '~'


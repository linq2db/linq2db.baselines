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
	r.CaseSensitive LIKE '%stSt%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE '%stSt%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE '%stst%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE '%stst%' ESCAPE '~'


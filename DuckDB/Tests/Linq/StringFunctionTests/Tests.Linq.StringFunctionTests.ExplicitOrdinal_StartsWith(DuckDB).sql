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
	$Id,
	$CaseSensitive,
	$CaseInsensitive
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE 'TestSt%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE 'TestSt%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE 'testst%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE 'testst%' ESCAPE '~'


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
	r.CaseSensitive ILIKE 'TestSt%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive ILIKE 'TestSt%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseSensitive ILIKE 'testst%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive ILIKE 'testst%' ESCAPE '~'


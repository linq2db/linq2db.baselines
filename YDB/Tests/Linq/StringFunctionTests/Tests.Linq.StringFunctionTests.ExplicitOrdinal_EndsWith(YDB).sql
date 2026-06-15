-- YDB Ydb

DELETE FROM
	CollatedTable

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $CaseSensitive Text(10) -- String
SET     $CaseSensitive = 'TestString'u
DECLARE $CaseInsensitive Text(10) -- String
SET     $CaseInsensitive = 'TestString'u

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

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE '%stString'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE '%stString'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	CollatedTable r
WHERE
	r.CaseSensitive LIKE '%ststring'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	CollatedTable r
WHERE
	r.CaseInsensitive LIKE '%ststring'u ESCAPE '~'s


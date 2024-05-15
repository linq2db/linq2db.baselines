BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	CollatedTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO CollatedTable
(
	Id,
	CaseSensitive,
	CaseInsensitive
)
VALUES
(
	1,
	'TestString',
	'TestString'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	positionCaseInsensitive(r.CaseSensitive, 'stSt') > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	positionCaseInsensitive(r.CaseInsensitive, 'stSt') > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	positionCaseInsensitive(r.CaseSensitive, 'stst') > 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	positionCaseInsensitive(r.CaseInsensitive, 'stst') > 0


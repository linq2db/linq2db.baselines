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
	startsWith(r.CaseSensitive, 'TestSt')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(r.CaseInsensitive, 'TestSt')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(r.CaseSensitive, 'testst')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(r.CaseInsensitive, 'testst')


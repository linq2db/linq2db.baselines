BeforeExecute
-- ClickHouse.Driver ClickHouse

ALTER TABLE
	CollatedTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'stString')

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'stString')

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'ststring')

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'ststring')


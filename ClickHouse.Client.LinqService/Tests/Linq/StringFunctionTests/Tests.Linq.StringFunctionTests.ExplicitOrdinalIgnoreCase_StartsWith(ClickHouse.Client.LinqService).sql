BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	CollatedTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(lowerUTF8(r.CaseSensitive), 'testst')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(lowerUTF8(r.CaseInsensitive), 'testst')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(lowerUTF8(r.CaseSensitive), 'testst')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(lowerUTF8(r.CaseInsensitive), 'testst')


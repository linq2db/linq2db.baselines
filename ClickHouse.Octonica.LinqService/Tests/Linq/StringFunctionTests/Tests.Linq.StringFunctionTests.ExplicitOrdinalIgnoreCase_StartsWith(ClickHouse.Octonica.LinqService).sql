BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	CollatedTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(lowerUTF8(r.CaseSensitive), 'testst')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(lowerUTF8(r.CaseInsensitive), 'testst')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(lowerUTF8(r.CaseSensitive), 'testst')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	startsWith(lowerUTF8(r.CaseInsensitive), 'testst')


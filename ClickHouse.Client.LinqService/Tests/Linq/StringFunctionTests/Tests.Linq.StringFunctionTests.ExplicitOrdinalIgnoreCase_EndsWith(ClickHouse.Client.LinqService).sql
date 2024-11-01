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
	endsWith(lowerUTF8(r.CaseSensitive), 'ststring') = true

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseInsensitive), 'ststring') = true

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseSensitive), 'ststring') = true

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseInsensitive), 'ststring') = true


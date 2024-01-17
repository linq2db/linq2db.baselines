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
	toInt32(1),
	'TestString',
	'TestString'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseSensitive), 'ststring')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseInsensitive), 'ststring')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseSensitive), 'ststring')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	endsWith(lowerUTF8(r.CaseInsensitive), 'ststring')


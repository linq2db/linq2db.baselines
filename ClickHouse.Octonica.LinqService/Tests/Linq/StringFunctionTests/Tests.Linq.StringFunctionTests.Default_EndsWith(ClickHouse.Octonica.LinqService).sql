BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	CollatedTable
DELETE WHERE 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'stString')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'stString')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'ststring')

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'ststring')


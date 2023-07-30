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
	toInt32(1),
	'TestString',
	'TestString'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	positionCaseInsensitive(r.CaseSensitive, 'stSt') > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	positionCaseInsensitive(r.CaseInsensitive, 'stSt') > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	positionCaseInsensitive(r.CaseSensitive, 'stst') > toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	positionCaseInsensitive(r.CaseInsensitive, 'stst') > toInt32(0)


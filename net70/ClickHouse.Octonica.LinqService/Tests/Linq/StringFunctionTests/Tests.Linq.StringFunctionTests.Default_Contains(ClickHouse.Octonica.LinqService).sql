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
	position(r.CaseSensitive, 'stSt') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseInsensitive, 'stSt') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseSensitive, 'stst') > toInt32(0)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseInsensitive, 'stst') > toInt32(0)


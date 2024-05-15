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
	position(r.CaseSensitive, 'stSt') > 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseInsensitive, 'stSt') > 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseSensitive, 'stst') > 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	CollatedTable r
WHERE
	position(r.CaseInsensitive, 'stst') > 0


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
	toInt32(1),
	'TestString',
	'TestString'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'stString')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'stString')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseSensitive, 'ststring')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	CollatedTable r
WHERE
	endsWith(r.CaseInsensitive, 'ststring')


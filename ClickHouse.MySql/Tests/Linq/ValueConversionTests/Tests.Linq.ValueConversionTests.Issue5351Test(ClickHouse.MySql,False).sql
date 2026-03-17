-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Issue5351Table
UPDATE
	Test = NULL
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Test
FROM
	Issue5351Table x
WHERE
	x.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Issue5351Table
UPDATE
	Test = 'X'
WHERE
	Id = 2

-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Test
FROM
	Issue5351Table x
WHERE
	x.Id = 2
LIMIT 2

-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Test
FROM
	Issue5351Table x
WHERE
	x.Test = 'X'


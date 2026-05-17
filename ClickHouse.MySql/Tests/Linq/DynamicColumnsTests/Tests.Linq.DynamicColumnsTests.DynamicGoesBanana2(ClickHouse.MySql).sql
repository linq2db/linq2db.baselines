-- ClickHouse.MySql ClickHouse

INSERT INTO BananaTable
(
	Id,
	Property
)
VALUES
(
	1,
	'test1'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Property
FROM
	BananaTable t1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	BananaTable
UPDATE
	Property = 'banana'
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Property
FROM
	BananaTable t1


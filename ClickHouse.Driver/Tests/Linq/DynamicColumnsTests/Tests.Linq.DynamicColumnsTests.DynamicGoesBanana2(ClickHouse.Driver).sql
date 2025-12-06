-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Property
FROM
	BananaTable t1

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	BananaTable
UPDATE
	Property = 'banana'
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Property
FROM
	BananaTable t1


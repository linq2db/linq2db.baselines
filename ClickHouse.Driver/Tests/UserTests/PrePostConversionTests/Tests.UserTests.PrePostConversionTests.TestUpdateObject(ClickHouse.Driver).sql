-- ClickHouse.Driver ClickHouse

INSERT INTO ValuesTable
(
	Id,
	SomeValue1,
	SomeValue2
)
VALUES
(
	toInt64(1),
	2,
	2
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.SomeValue1,
	t1.SomeValue2
FROM
	ValuesTable t1
LIMIT 2

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	ValuesTable
UPDATE
	SomeValue1 = 8,
	SomeValue2 = 8
WHERE
	Id = toInt64(1)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.SomeValue1,
	t1.SomeValue2
FROM
	ValuesTable t1
LIMIT 2


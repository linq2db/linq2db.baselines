-- ClickHouse.Driver ClickHouse

INSERT INTO InsertTestClassDest
(
	Id,
	Value,
	OtherValue
)
SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1
LIMIT 2

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClassDest t1
LIMIT 2


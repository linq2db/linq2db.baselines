-- ClickHouse.MySql ClickHouse

INSERT INTO InsertTestClassDest
(
	Id,
	Value,
	OtherValue
)
SELECT
	x.Id + 1,
	x.Value,
	x.OtherValue
FROM
	InsertTestClass x

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1
LIMIT 2

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClassDest t1
LIMIT 2


-- ClickHouse.MySql ClickHouse

SELECT
	e.Id,
	e.Value1 + 12345
FROM
	ClientCalcEntity e

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Name
FROM
	ClientCalcEntity t1

-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN e.Id > 1 THEN e.Value1
		ELSE e.Value2
	END
FROM
	ClientCalcEntity e

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Name
FROM
	ClientCalcEntity t1

-- ClickHouse.MySql ClickHouse

SELECT
	negate(e.Value1)
FROM
	ClientCalcEntity e

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Name
FROM
	ClientCalcEntity t1

-- ClickHouse.MySql ClickHouse

SELECT
	e.Value1 + ABS(e.Value2)
FROM
	ClientCalcEntity e

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Name
FROM
	ClientCalcEntity t1


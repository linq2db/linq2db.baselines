-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.Nullable < p.OtherNullable

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.Nullable >= p.OtherNullable OR p.Nullable IS NULL OR
	p.OtherNullable IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.OtherNullable > p.Nullable

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1

-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.NotNullable,
	p.Nullable,
	p.OtherNullable
FROM
	WhereCompareData p
WHERE
	p.OtherNullable <= p.Nullable OR p.OtherNullable IS NULL OR
	p.Nullable IS NULL

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.NotNullable,
	t1.Nullable,
	t1.OtherNullable
FROM
	WhereCompareData t1


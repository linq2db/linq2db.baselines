-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) = (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) = (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) = (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) = (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) = (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) = (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) <> (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) <> (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) <> (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) <> (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) <> (1=1)

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) <> (1=1)


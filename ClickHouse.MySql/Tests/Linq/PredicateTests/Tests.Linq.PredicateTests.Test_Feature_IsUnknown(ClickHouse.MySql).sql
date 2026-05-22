-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) IS UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) IS UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) IS UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NOT UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NOT UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) IS NOT UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NOT UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) IS NOT UNKNOWN

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) IS NOT UNKNOWN


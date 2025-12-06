-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) IS NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) IS NOT NULL

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) IS NOT NULL


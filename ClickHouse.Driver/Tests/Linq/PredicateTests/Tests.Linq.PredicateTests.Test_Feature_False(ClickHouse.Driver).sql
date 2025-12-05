-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) = FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) = FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) = FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) = FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) = FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) = FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) <> FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) <> FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null = r.Null) <> FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) <> FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Null) <> FALSE

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Null) <> FALSE


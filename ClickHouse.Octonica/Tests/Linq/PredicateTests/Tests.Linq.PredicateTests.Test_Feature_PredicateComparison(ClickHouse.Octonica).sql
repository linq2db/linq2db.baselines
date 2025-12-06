-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) = (r.One IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) = (r.Zero IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) = (r.Null IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) = (r.Null IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) = (r.Zero IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null IS NULL) = (r.Null IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) <> (r.One IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) <> (r.Zero IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) <> (r.Null IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) <> (r.Null IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) <> (r.Zero IS NULL)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Null IS NULL) <> (r.Null IS NULL)


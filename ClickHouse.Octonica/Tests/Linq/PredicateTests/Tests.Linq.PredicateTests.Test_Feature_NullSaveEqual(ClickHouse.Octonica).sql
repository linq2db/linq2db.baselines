-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.One <=> r.One

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.Zero <=> r.Zero

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.Null <=> r.Null

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.One <=> r.Zero

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.One <=> r.Null

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	r.Zero <=> r.Null

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT(r.One <=> r.One)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT(r.Zero <=> r.Zero)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT(r.Null <=> r.Null)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT(r.One <=> r.Zero)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT(r.One <=> r.Null)

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT(r.Zero <=> r.Null)


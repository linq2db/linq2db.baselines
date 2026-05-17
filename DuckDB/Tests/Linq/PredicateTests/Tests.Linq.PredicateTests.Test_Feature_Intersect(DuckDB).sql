-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.One
		INTERSECT
		SELECT
			r.One
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.Zero
		INTERSECT
		SELECT
			r.Zero
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r."Null"
		INTERSECT
		SELECT
			r."Null"
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.One
		INTERSECT
		SELECT
			r.Zero
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.One
		INTERSECT
		SELECT
			r."Null"
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	EXISTS(
		SELECT
			r.Zero
		INTERSECT
		SELECT
			r."Null"
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.One
		INTERSECT
		SELECT
			r.One
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.Zero
		INTERSECT
		SELECT
			r.Zero
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r."Null"
		INTERSECT
		SELECT
			r."Null"
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.One
		INTERSECT
		SELECT
			r.Zero
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.One
		INTERSECT
		SELECT
			r."Null"
	)

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	NOT EXISTS(
		SELECT
			r.Zero
		INTERSECT
		SELECT
			r."Null"
	)


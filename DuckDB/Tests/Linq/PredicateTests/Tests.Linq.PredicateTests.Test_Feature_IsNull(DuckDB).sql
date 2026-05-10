-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") IS NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NOT NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NOT NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") IS NOT NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NOT NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") IS NOT NULL

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") IS NOT NULL


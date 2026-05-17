-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") IS UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") IS UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") IS UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NOT UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NOT UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") IS NOT UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NOT UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") IS NOT UNKNOWN

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") IS NOT UNKNOWN


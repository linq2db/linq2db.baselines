-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) = FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) = FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") = FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) = FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") = FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") = FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) <> FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) <> FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") <> FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) <> FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") <> FALSE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") <> FALSE


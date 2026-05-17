-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) = TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) = TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") = TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) = TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") = TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") = TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) <> TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) <> TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") <> TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) <> TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") <> TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") <> TRUE


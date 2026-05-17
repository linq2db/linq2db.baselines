-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") IS TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") IS TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") IS TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NOT TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NOT TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r."Null" = r."Null") IS NOT TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NOT TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.One = r."Null") IS NOT TRUE

-- DuckDB

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	(r.Zero = r."Null") IS NOT TRUE


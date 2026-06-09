-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.One) = TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) = TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.`Null` = r.`Null`) = TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) = TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.`Null`) = TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero = r.`Null`) = TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.One) <> TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) <> TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.`Null` = r.`Null`) <> TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) <> TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.`Null`) <> TRUE

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero = r.`Null`) <> TRUE


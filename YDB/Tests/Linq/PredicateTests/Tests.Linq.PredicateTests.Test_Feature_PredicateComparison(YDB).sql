-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) = (r.One IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) = (r.Zero IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) = (r.`Null` IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) = (r.`Null` IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) = (r.Zero IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.`Null` IS NULL) = (r.`Null` IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) <> (r.One IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) <> (r.Zero IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One IS NULL) <> (r.`Null` IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) <> (r.`Null` IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero IS NULL) <> (r.Zero IS NULL)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.`Null` IS NULL) <> (r.`Null` IS NULL)


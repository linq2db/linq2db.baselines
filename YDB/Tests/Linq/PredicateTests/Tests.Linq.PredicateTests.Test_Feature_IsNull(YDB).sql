-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.`Null` = r.`Null`) IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.`Null`) IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero = r.`Null`) IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.One) IS NOT NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero = r.Zero) IS NOT NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.`Null` = r.`Null`) IS NOT NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.Zero) IS NOT NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.One = r.`Null`) IS NOT NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	(r.Zero = r.`Null`) IS NOT NULL


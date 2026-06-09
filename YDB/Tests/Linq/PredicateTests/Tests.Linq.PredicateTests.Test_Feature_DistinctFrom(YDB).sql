-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.One IS DISTINCT FROM r.One

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.Zero IS DISTINCT FROM r.Zero

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.`Null` IS DISTINCT FROM r.`Null`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.One IS DISTINCT FROM r.Zero

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.One IS DISTINCT FROM r.`Null`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.Zero IS DISTINCT FROM r.`Null`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.One IS NOT DISTINCT FROM r.One

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.Zero IS NOT DISTINCT FROM r.Zero

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.`Null` IS NOT DISTINCT FROM r.`Null`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.One IS NOT DISTINCT FROM r.Zero

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.One IS NOT DISTINCT FROM r.`Null`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	FeatureTable r
WHERE
	r.Zero IS NOT DISTINCT FROM r.`Null`


-- YDB Ydb
SELECT
	r.`Value` as Value_1
FROM
	CoarseConvertedRow r
LIMIT 2

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('2026-06-01T09:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	CoarseConvertedRow r
WHERE
	r.`Value` = $value

-- YDB Ydb
DECLARE $value Datetime -- DateTime
SET     $value = Timestamp('2026-06-01T09:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.`Value`) = $value
	) t1

-- YDB Ydb
DECLARE $CoarseValue Datetime -- DateTime
SET     $CoarseValue = Timestamp('2026-06-01T09:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.`Value`) = $CoarseValue
	) t1

-- YDB Ydb
DECLARE $day Date
SET     $day = Timestamp('2026-05-31T00:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1.`Day`) = $day
	) t1

-- YDB Ydb
DECLARE $CoarseConvertedDay Date
SET     $CoarseConvertedDay = Timestamp('2026-05-31T00:00:00.000000Z')

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1.`Day`) = $CoarseConvertedDay
	) t1


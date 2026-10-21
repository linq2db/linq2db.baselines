-- ClickHouse.Octonica ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(r.Value, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(r.Value), 7))) / 100)
FROM
	DbTypeOnlyDateRow r
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(r.Zoned, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(r.Zoned), 7))) / 100)
FROM
	DbTypeOnlyDateRow r
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	toUnixTimestamp64Milli(toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(toDateTime64(r.Value, 7)) + toInt64(toFloat64(226000000))), 3)) - toUnixTimestamp64Milli(toDateTime64(r.Value, 3))
FROM
	DbTypeOnlyDateRow r
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1.Value) as In_1
		FROM
			DbTypeOnlyDateRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	toDateTime64(t1.In_1, 7) IN (toDateTime64('2026-06-01 10:00:00.5000000', 7))


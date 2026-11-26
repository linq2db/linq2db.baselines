-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	r.Padded BETWEEN '00005' AND '00050',
	r.Padded NOT BETWEEN '00005' AND '00050',
	'00042' BETWEEN r.Low AND r.High,
	r.Elapsed BETWEEN toInt64(5) AND toInt64(50)
FROM
	BetweenConvertedRow r
WHERE
	r.Padded NOT BETWEEN '00100' AND '00200'

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Padded,
	t1.Low,
	t1.High,
	t1.Elapsed
FROM
	BetweenConvertedRow t1

-- ClickHouse.Driver ClickHouse
SELECT
	g_2.Key_1,
	g_2.InRange BETWEEN '00001' AND '00010'
FROM
	(
		SELECT
			g_1.Id as Key_1,
			MAX(g_1.Padded) as InRange
		FROM
			BetweenConvertedRow g_1
		GROUP BY
			g_1.Id
	) g_2
WHERE
	g_2.InRange NOT BETWEEN '00100' AND '00200'

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Padded,
	t1.Low,
	t1.High,
	t1.Elapsed
FROM
	BetweenConvertedRow t1


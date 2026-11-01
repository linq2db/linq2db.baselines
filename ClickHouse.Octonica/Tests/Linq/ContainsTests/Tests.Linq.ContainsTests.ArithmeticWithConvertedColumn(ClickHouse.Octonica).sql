-- ClickHouse.Octonica ClickHouse
SELECT
	SUM(g_1.Cents) * 2
FROM
	ConvertedAmount g_1
GROUP BY
	g_1.Group
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	SUM(g_1.Cents) / 2
FROM
	ConvertedAmount g_1
GROUP BY
	g_1.Group
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	SUM(g_1.Cents) + 200
FROM
	ConvertedAmount g_1
GROUP BY
	g_1.Group
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Cents * 2
FROM
	ConvertedAmount x
WHERE
	x.Id = 1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Cents + 200
FROM
	ConvertedAmount x
WHERE
	x.Id = 1
LIMIT 2


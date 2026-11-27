-- ClickHouse.Driver ClickHouse
SELECT
	t1.LeftId,
	t1.RightId,
	a_Left.LeftId,
	a_Left.LeftData,
	a_Right.RightId,
	a_Right.RightData
FROM
	ByteKeyLeftRight t1
		LEFT JOIN ByteKeyLeft a_Left ON t1.LeftId = a_Left.LeftId
		LEFT JOIN ByteKeyRight a_Right ON t1.RightId = a_Right.RightId
LIMIT 1

-- ClickHouse.Driver ClickHouse
SELECT
	m_1.LeftId,
	d.LeftId,
	d.RightId
FROM
	(
		SELECT
			t1.LeftId as LeftId
		FROM
			ByteKeyLeft t1
		LIMIT 1
	) m_1
		INNER JOIN ByteKeyLeftRight d ON m_1.LeftId = d.LeftId

-- ClickHouse.Driver ClickHouse
SELECT
	t1.LeftId,
	t1.LeftData
FROM
	ByteKeyLeft t1
LIMIT 1

-- ClickHouse.Driver ClickHouse
SELECT
	m_1.RightId,
	d.LeftId,
	d.RightId
FROM
	(
		SELECT
			t1.RightId as RightId
		FROM
			ByteKeyRight t1
		LIMIT 1
	) m_1
		INNER JOIN ByteKeyLeftRight d ON m_1.RightId = d.RightId

-- ClickHouse.Driver ClickHouse
SELECT
	t1.RightId,
	t1.RightData
FROM
	ByteKeyRight t1
LIMIT 1


BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.LeftId,
	t1.RightId,
	a_Left.LeftId,
	a_Left.LeftData,
	a_Right.RightId,
	a_Right.RightData
FROM
	LeftRight t1
		LEFT JOIN Left a_Left ON t1.LeftId = a_Left.LeftId
		LEFT JOIN Right a_Right ON t1.RightId = a_Right.RightId
LIMIT 1

BeforeExecute
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
			Left t1
		LIMIT 1
	) m_1
		INNER JOIN LeftRight d ON m_1.LeftId = d.LeftId

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.LeftId,
	t1.LeftData
FROM
	Left t1
LIMIT 1

BeforeExecute
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
			Right t1
		LIMIT 1
	) m_1
		INNER JOIN LeftRight d ON m_1.RightId = d.RightId

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.RightId,
	t1.RightData
FROM
	Right t1
LIMIT 1


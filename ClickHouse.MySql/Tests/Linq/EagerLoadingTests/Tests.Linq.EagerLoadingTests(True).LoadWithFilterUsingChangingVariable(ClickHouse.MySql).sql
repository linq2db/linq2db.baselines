-- ClickHouse.MySql ClickHouse
INSERT INTO LoadWithFilterRecord
(
	Id
)
VALUES
(
	1
)

-- ClickHouse.MySql ClickHouse
SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	LoadWithFilterRecord m_1
		INNER JOIN LoadWithFilterRecordItem d ON m_1.Id = d.TestId
WHERE
	d.Id = 11

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id
FROM
	LoadWithFilterRecord t1

-- ClickHouse.MySql ClickHouse
SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	LoadWithFilterRecord m_1
		INNER JOIN LoadWithFilterRecordItem d ON m_1.Id = d.TestId
WHERE
	d.Id = 12

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id
FROM
	LoadWithFilterRecord t1


-- ClickHouse.Octonica ClickHouse
INSERT INTO LoadWithFilterRecord
(
	Id
)
VALUES
(
	1
)

-- ClickHouse.Octonica ClickHouse
SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	LoadWithFilterRecord m_1
		INNER JOIN LoadWithFilterRecordItem d ON m_1.Id = d.TestId
WHERE
	d.Id = 11

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id
FROM
	LoadWithFilterRecord t1

-- ClickHouse.Octonica ClickHouse
SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	LoadWithFilterRecord m_1
		INNER JOIN LoadWithFilterRecordItem d ON m_1.Id = d.TestId
WHERE
	d.Id = 12

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id
FROM
	LoadWithFilterRecord t1


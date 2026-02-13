-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	MasterClass m_1
		INNER JOIN DetailClass d ON d.MasterId = m_1.Id1 AND d.MasterId = m_1.Id2
WHERE
	m_1.Id1 >= 0

-- ClickHouse.Driver ClickHouse

SELECT
	m_2.Item1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Item1
		FROM
			MasterClass m_1
		WHERE
			m_1.Id1 >= 0
	) m_2
		INNER JOIN DetailClass d ON d.MasterId = m_2.Item1
WHERE
	d.MasterId % 2 = 0

-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2
FROM
	MasterClass m_1
WHERE
	m_1.Id1 >= 0


-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id1,
	d_1.DetailId,
	d_1.MasterId,
	d_1.DetailValue
FROM
	(
		SELECT DISTINCT
			t1.Id1 as Id1
		FROM
			MasterClass t1
				INNER JOIN DetailClass d ON t1.Id1 = d.MasterId
	) m_1
		INNER JOIN DetailClass d_1 ON m_1.Id1 = d_1.MasterId

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2,
	m_1.Value,
	m_1.ByteValues
FROM
	MasterClass m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId


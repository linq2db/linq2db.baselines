-- ClickHouse.Driver ClickHouse

SELECT
	m_2.DetailId,
	m_2.Item1,
	d_1.SubDetailId,
	d_1.DetailId,
	d_1.SubDetailValue
FROM
	(
		SELECT DISTINCT
			d.DetailId as DetailId,
			t1.Item1 as Item1
		FROM
			(
				SELECT DISTINCT
					m_1.Id1 as Item1
				FROM
					MasterClass m_1
				WHERE
					m_1.Id1 >= 1
			) t1
				INNER JOIN DetailClass d ON t1.Item1 = d.MasterId
	) m_2
		INNER JOIN SubDetailClass d_1 ON m_2.DetailId = d_1.DetailId

-- ClickHouse.Driver ClickHouse

SELECT
	m_2.Item1,
	d.DetailId,
	d.DetailValue,
	d.MasterId
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Item1
		FROM
			MasterClass m_1
		WHERE
			m_1.Id1 >= 1
	) m_2
		INNER JOIN DetailClass d ON m_2.Item1 = d.MasterId

-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2,
	m_1.Value
FROM
	MasterClass m_1
WHERE
	m_1.Id1 >= 1


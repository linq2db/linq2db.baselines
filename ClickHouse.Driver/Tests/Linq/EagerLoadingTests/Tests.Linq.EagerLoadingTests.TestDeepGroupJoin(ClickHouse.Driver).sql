-- ClickHouse.Driver ClickHouse

SELECT
	m_2.Item1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			t1.Item1 as Item1
		FROM
			(
				SELECT
					m_1.Id1 as Item1
				FROM
					MasterClass m_1
				ORDER BY
					m_1.Id2 DESC
				LIMIT 20
			) t1
	) m_2
		INNER JOIN DetailClass d ON m_2.Item1 = d.MasterId

-- ClickHouse.Driver ClickHouse

SELECT
	m_2.Item1,
	d.Id1,
	d.Id2,
	d.Value,
	d.ByteValues
FROM
	(
		SELECT DISTINCT
			t1.Item1 as Item1
		FROM
			(
				SELECT
					m_1.Id1 as Item1
				FROM
					MasterClass m_1
				ORDER BY
					m_1.Id2 DESC
				LIMIT 20
			) t1
	) m_2
		INNER JOIN MasterClass d ON m_2.Item1 = d.Id1

-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id1
FROM
	MasterClass m_1
ORDER BY
	m_1.Id2 DESC
LIMIT 20


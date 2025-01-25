BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			t1.Id1 as Id1
		FROM
			(
				SELECT
					m_1.Id1 as Id1
				FROM
					MasterClass m_1
				ORDER BY
					m_1.Id2 DESC
				LIMIT 20
			) t1
	) m_2
		INNER JOIN DetailClass d ON m_2.Id1 = d.MasterId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.Id1,
	d.Id1,
	d.Id2,
	d.Value,
	d.ByteValues
FROM
	(
		SELECT DISTINCT
			t1.Id1 as Id1
		FROM
			(
				SELECT
					m_1.Id1 as Id1
				FROM
					MasterClass m_1
				ORDER BY
					m_1.Id2 DESC
				LIMIT 20
			) t1
	) m_2
		INNER JOIN MasterClass d ON m_2.Id1 = d.Id1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1
FROM
	MasterClass m_1
ORDER BY
	m_1.Id2 DESC
LIMIT 20


-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Item1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			t2.Item1 as Item1
		FROM
			(
				SELECT
					t1.Id1 as Item1
				FROM
					MasterClass t1
				LIMIT 20
			) t2
	) m_1
		INNER JOIN DetailClass d ON m_1.Item1 = d.MasterId

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id1,
	t1.Id2,
	t1.Value,
	t1.ByteValues
FROM
	MasterClass t1
LIMIT 20


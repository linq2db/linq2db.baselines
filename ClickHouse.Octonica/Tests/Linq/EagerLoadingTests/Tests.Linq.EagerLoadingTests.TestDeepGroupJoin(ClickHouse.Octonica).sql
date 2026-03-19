-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			t2.Id1 as Id1
		FROM
			(
				SELECT
					t1.Id1 as Id1
				FROM
					MasterClass t1
				ORDER BY
					t1.Id2 DESC
				LIMIT 20
			) t2
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	d.Id1,
	d.Id2,
	d.Value,
	d.ByteValues
FROM
	(
		SELECT DISTINCT
			t2.Id1 as Id1
		FROM
			(
				SELECT
					t1.Id1 as Id1
				FROM
					MasterClass t1
				ORDER BY
					t1.Id2 DESC
				LIMIT 20
			) t2
	) m_1
		INNER JOIN MasterClass d ON m_1.Id1 = d.Id1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id1
FROM
	MasterClass t1
ORDER BY
	t1.Id2 DESC
LIMIT 20


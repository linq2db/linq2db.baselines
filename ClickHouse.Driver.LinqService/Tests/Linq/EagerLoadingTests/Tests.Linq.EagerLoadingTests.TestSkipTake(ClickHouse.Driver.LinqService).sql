BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_2.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
	) m_2
		INNER JOIN DetailClass d ON m_2.Id1 = d.MasterId

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_2.Id1,
	d_1.DetailId,
	d_1.MasterId,
	d_1.DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
	) m_2
		INNER JOIN (
			SELECT
				d.DetailId as DetailId,
				d.MasterId as MasterId,
				d.DetailValue as DetailValue,
				ROW_NUMBER() OVER (PARTITION BY d.MasterId ORDER BY d.DetailId) as rn
			FROM
				DetailClass d
		) d_1 ON m_2.Id1 = d_1.MasterId AND d_1.rn > 1 AND d_1.rn <= 3

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2,
	m_1.Value,
	m_1.ByteValues
FROM
	MasterClass m_1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			t1.Id1 as Id1
		FROM
			MasterClass t1
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id1,
	t1.Id2,
	t1.Value,
	t1.ByteValues
FROM
	MasterClass t1


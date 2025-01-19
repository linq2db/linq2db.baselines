BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			x.Id1 as Id1
		FROM
			MasterClass x
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id1,
	x.Id2,
	x.Value,
	x.ByteValues
FROM
	MasterClass x

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			x.Id1 as Id1
		FROM
			MasterClass x
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id1,
	x.Id2,
	x.Value,
	x.ByteValues
FROM
	MasterClass x


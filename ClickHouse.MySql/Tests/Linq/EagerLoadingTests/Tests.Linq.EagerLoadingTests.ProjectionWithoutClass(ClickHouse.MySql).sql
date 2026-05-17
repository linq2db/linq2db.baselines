-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id1,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			x.Id1 as Id1
		FROM
			MasterClass x
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id1
FROM
	MasterClass m_1


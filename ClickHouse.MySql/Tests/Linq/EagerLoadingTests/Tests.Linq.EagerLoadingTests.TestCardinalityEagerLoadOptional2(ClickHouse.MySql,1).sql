-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	m_1.Item1,
	d_1.Id,
	d_1.FK
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t1.Id as Item1
		FROM
			EntityMA t1
				INNER JOIN EntityMB d ON t1.Id = d.FK
	) m_1
		INNER JOIN EntityMC d_1 ON m_1.Id = d_1.FK

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.FK,
	d.FKD,
	d.Id
FROM
	EntityMA m_1
		INNER JOIN EntityMB d ON m_1.Id = d.FK

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.FK,
	t1.Id
FROM
	EntityMA t1


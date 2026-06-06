-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.FormId,
	d.OrderIndex,
	d.Name1,
	d.Name2,
	d.Name3
FROM
	(
		SELECT
			t1.Id as Id
		FROM
			Issue4596Form t1
		LIMIT 1
	) m_1
		INNER JOIN Issue4596Item d ON d.FormId = m_1.Id

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.C1
FROM
	Issue4596Form t1
LIMIT 1


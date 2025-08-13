BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_2.Id,
	d.Id,
	d.Value,
	d.ParentId
FROM
	(
		SELECT DISTINCT
			a_MainItem.Id as Id
		FROM
			MainItem2 m_1
				LEFT JOIN MainItem a_MainItem ON m_1.MainItemId = a_MainItem.Id
		WHERE
			m_1.Id > 1
	) m_2
		INNER JOIN SubItem2 d ON m_2.Id = d.ParentId OR m_2.Id IS NULL AND d.ParentId IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	m_1.Value,
	m_1.MainItemId,
	a_MainItem.Id,
	a_MainItem.Value
FROM
	MainItem2 m_1
		LEFT JOIN MainItem a_MainItem ON m_1.MainItemId = a_MainItem.Id
WHERE
	m_1.Id > 1


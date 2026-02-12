-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Item1,
	d.Id,
	d.ParentId,
	d.IsActive
FROM
	(
		SELECT DISTINCT
			t1.Id as Item1
		FROM
			ParentRecord t1
	) m_1
		INNER JOIN ChildRecord d ON m_1.Item1 = d.ParentId

-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Item1,
	d.Id,
	d.ParentId,
	d.IsActive
FROM
	(
		SELECT DISTINCT
			t1.Id as Item1
		FROM
			ParentRecord t1
	) m_1
		INNER JOIN ChildRecord d ON m_1.Item1 = d.ParentId
WHERE
	d.IsActive

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id
FROM
	ParentRecord t1


-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ParentId,
	d.IsActive
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			ParentRecord t1
	) m_1
		INNER JOIN ChildRecord d ON m_1.Id = d.ParentId

-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.ParentId,
	d.IsActive
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			ParentRecord t1
	) m_1
		INNER JOIN ChildRecord d ON m_1.Id = d.ParentId
WHERE
	d.IsActive

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id
FROM
	ParentRecord t1


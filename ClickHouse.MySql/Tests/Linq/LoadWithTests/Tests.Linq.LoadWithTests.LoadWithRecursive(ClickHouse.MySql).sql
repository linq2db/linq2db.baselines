-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.Id,
	d_1.Value,
	d_1.ParentId,
	a_ParentSubItem.Id,
	a_ParentSubItem.Value,
	a_ParentSubItem.ParentId
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t2.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					t1.Id as Id
				FROM
					MainItem t1
						INNER JOIN MainItem2 mm ON mm.Id = t1.Id
				WHERE
					t1.Id > 1
			) t2
				INNER JOIN SubItem1 d ON t2.Id = d.ParentId
	) m_1
		INNER JOIN SubItem1_Sub d_1 ON m_1.Id = d_1.ParentId
		LEFT JOIN SubItem1 a_ParentSubItem ON d_1.ParentId = a_ParentSubItem.Id

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Value,
	d.ParentId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			MainItem t1
				INNER JOIN MainItem2 mm ON mm.Id = t1.Id
		WHERE
			t1.Id > 1
	) m_1
		INNER JOIN SubItem1 d ON m_1.Id = d.ParentId

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Value,
	d.ParentId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			MainItem t1
				INNER JOIN MainItem2 mm ON mm.Id = t1.Id
		WHERE
			t1.Id > 1
	) m_1
		INNER JOIN SubItem2 d ON m_1.Id = d.ParentId

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	MainItem t1
		INNER JOIN MainItem2 mm ON mm.Id = t1.Id
WHERE
	t1.Id > 1

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.Id,
	d_1.Value,
	d_1.ParentId,
	a_ParentSubItem.Id,
	a_ParentSubItem.Value,
	a_ParentSubItem.ParentId
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t2.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					t1.Id as Id
				FROM
					MainItem t1
						INNER JOIN MainItem2 mm ON mm.Id = t1.Id
				WHERE
					t1.Id > 1
			) t2
				INNER JOIN SubItem1 d ON t2.Id = d.ParentId
	) m_1
		INNER JOIN SubItem1_Sub d_1 ON m_1.Id = d_1.ParentId
		LEFT JOIN SubItem1 a_ParentSubItem ON d_1.ParentId = a_ParentSubItem.Id

-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Value,
	d.ParentId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			MainItem t1
				INNER JOIN MainItem2 mm ON mm.Id = t1.Id
		WHERE
			t1.Id > 1
	) m_1
		INNER JOIN SubItem1 d ON m_1.Id = d.ParentId

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	MainItem t1
		INNER JOIN MainItem2 mm ON mm.Id = t1.Id
WHERE
	t1.Id > 1


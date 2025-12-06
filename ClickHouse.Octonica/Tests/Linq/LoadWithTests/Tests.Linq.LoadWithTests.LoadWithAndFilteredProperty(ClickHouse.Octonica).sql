-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.Id,
	d_1.Id,
	d_1.Value_1,
	d_1.ParentId
FROM
	(
		SELECT DISTINCT
			m_1.Id as Id
		FROM
			MainItem m_1
		WHERE
			m_1.Id > 1
	) m_2
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.Value as Value_1,
				d.ParentId as ParentId,
				ROW_NUMBER() OVER (PARTITION BY d.ParentId ORDER BY d.Id) as rn
			FROM
				SubItem1 d
			WHERE
				d.ParentId % 2 = 0
		) d_1 ON m_2.Id = d_1.ParentId AND d_1.rn <= 2

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	MainItem m_1
WHERE
	m_1.Id > 1
ORDER BY
	m_1.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.Id,
	d_1.Id,
	d_1.Value_1,
	d_1.ParentId
FROM
	(
		SELECT DISTINCT
			m_1.Id as Id
		FROM
			MainItem m_1
		WHERE
			m_1.Id > 1
	) m_2
		INNER JOIN (
			SELECT
				d.Id as Id,
				d.Value as Value_1,
				d.ParentId as ParentId,
				ROW_NUMBER() OVER (PARTITION BY d.ParentId ORDER BY d.Id) as rn
			FROM
				SubItem1 d
			WHERE
				d.ParentId % 2 = 0
		) d_1 ON m_2.Id = d_1.ParentId AND d_1.rn <= 2

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	MainItem m_1
WHERE
	m_1.Id > 1
ORDER BY
	m_1.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.cond,
	m_2.Id,
	d_2.Id,
	d_2.Value_1,
	d_2.ParentId
FROM
	(
		SELECT DISTINCT
			a_Parent.Id as cond,
			t1.Id as Id
		FROM
			(
				SELECT DISTINCT
					m_1.Id as Id
				FROM
					MainItem m_1
				WHERE
					m_1.Id > 1
			) t1
				INNER JOIN SubItem1 d ON t1.Id = d.ParentId
				LEFT JOIN MainItem a_Parent ON d.ParentId = a_Parent.Id
	) m_2
		INNER JOIN (
			SELECT
				d_1.Id as Id,
				d_1.Value as Value_1,
				d_1.ParentId as ParentId,
				ROW_NUMBER() OVER (PARTITION BY d_1.ParentId ORDER BY d_1.Id) as rn
			FROM
				SubItem2 d_1
			WHERE
				d_1.ParentId % 2 = 0
		) d_2 ON (m_2.cond = d_2.ParentId OR m_2.cond IS NULL AND d_2.ParentId IS NULL) AND d_2.rn <= 2

-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.Id,
	d.Id,
	d.Value,
	d.ParentId,
	a_Parent.Id,
	a_Parent.Value
FROM
	(
		SELECT DISTINCT
			m_1.Id as Id
		FROM
			MainItem m_1
		WHERE
			m_1.Id > 1
	) m_2
		INNER JOIN SubItem1 d ON m_2.Id = d.ParentId
		LEFT JOIN MainItem a_Parent ON d.ParentId = a_Parent.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	MainItem m_1
WHERE
	m_1.Id > 1
ORDER BY
	m_1.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.cond,
	m_2.Id,
	d_2.Id,
	d_2.Value_1,
	d_2.ParentId
FROM
	(
		SELECT DISTINCT
			a_Parent.Id as cond,
			t1.Id as Id
		FROM
			(
				SELECT DISTINCT
					m_1.Id as Id
				FROM
					MainItem m_1
				WHERE
					m_1.Id > 1
			) t1
				INNER JOIN SubItem1 d ON t1.Id = d.ParentId
				LEFT JOIN MainItem a_Parent ON d.ParentId = a_Parent.Id
	) m_2
		INNER JOIN (
			SELECT
				d_1.Id as Id,
				d_1.Value as Value_1,
				d_1.ParentId as ParentId,
				ROW_NUMBER() OVER (PARTITION BY d_1.ParentId ORDER BY d_1.Id) as rn
			FROM
				SubItem2 d_1
			WHERE
				d_1.ParentId % 2 = 0
		) d_2 ON (m_2.cond = d_2.ParentId OR m_2.cond IS NULL AND d_2.ParentId IS NULL) AND d_2.rn <= 2

-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.Id,
	d.Id,
	d.Value,
	d.ParentId,
	a_Parent.Id,
	a_Parent.Value
FROM
	(
		SELECT DISTINCT
			m_1.Id as Id
		FROM
			MainItem m_1
		WHERE
			m_1.Id > 1
	) m_2
		INNER JOIN SubItem1 d ON m_2.Id = d.ParentId
		LEFT JOIN MainItem a_Parent ON d.ParentId = a_Parent.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	MainItem m_1
WHERE
	m_1.Id > 1
ORDER BY
	m_1.Id

-- ClickHouse.Octonica ClickHouse

SELECT
	m_2.Id,
	d.Id,
	d.Value,
	d.ParentId
FROM
	(
		SELECT DISTINCT
			m_1.Id as Id
		FROM
			MainItem m_1
		WHERE
			m_1.Id > 1
	) m_2
		INNER JOIN SubItem1 d ON m_2.Id = d.ParentId
WHERE
	d.ParentId % 2 = 0 AND startsWith(d.Value, 'Sub1_')

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Value
FROM
	MainItem m_1
WHERE
	m_1.Id > 1
ORDER BY
	m_1.Id


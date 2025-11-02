-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.Usage = 0

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.Usage = 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.Usage = 0

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Usage,
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d.Usage = 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Table404One t1


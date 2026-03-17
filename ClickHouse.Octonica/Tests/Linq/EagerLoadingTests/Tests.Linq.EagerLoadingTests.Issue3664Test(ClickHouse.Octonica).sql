-- ClickHouse.Octonica ClickHouse

INSERT INTO Test3664
(
	Id
)
VALUES
(
	1
)

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	Test3664 m_1
		INNER JOIN Test3664Item d ON m_1.Id = d.TestId
WHERE
	d.Id = 11

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Test3664 t1

-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.TestId
FROM
	Test3664 m_1
		INNER JOIN Test3664Item d ON m_1.Id = d.TestId
WHERE
	d.Id = 12

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id
FROM
	Test3664 t1


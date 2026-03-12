-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id,
	d.Name
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			Test3799Item item_1
				LEFT JOIN (
					SELECT
						a_Children.Id as Id,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentId ORDER BY a_Children.ParentId) as rn,
						a_Children.ParentId as ParentId
					FROM
						Test3799Item a_Children
				) t1 ON item_1.Id = t1.ParentId AND t1.rn = 1
	) m_1
		INNER JOIN Test3799Item d ON m_1.Id = d.ParentId

-- ClickHouse.Driver ClickHouse

SELECT
	item_1.Name,
	t1.Name,
	t1.Id
FROM
	Test3799Item item_1
		LEFT JOIN (
			SELECT
				a_Children.Name as Name,
				a_Children.Id as Id,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentId ORDER BY a_Children.ParentId) as rn,
				a_Children.ParentId as ParentId
			FROM
				Test3799Item a_Children
		) t1 ON item_1.Id = t1.ParentId AND t1.rn = 1


-- YDB Ydb

SELECT
	m_1.Id as Id,
	d.Name as Name
FROM
	(
		SELECT DISTINCT
			t2.Id as Id
		FROM
			Test3799Item item_1
				LEFT JOIN (
					SELECT
						t1.Id as Id,
						t1.ParentId as ParentId
					FROM
						(
							SELECT
								a_Children.Id as Id,
								ROW_NUMBER() OVER (PARTITION BY a_Children.ParentId ORDER BY a_Children.ParentId) as rn,
								a_Children.ParentId as ParentId
							FROM
								Test3799Item a_Children
						) t1
					WHERE
						t1.rn = 1
				) t2 ON item_1.Id = t2.ParentId
	) m_1
		INNER JOIN Test3799Item d ON m_1.Id = d.ParentId

-- YDB Ydb

SELECT
	item_1.Name as Name,
	t2.Name as Name_1,
	t2.Id as Id
FROM
	Test3799Item item_1
		LEFT JOIN (
			SELECT
				t1.Name as Name,
				t1.Id as Id,
				t1.ParentId as ParentId
			FROM
				(
					SELECT
						a_Children.Name as Name,
						a_Children.Id as Id,
						ROW_NUMBER() OVER (PARTITION BY a_Children.ParentId ORDER BY a_Children.ParentId) as rn,
						a_Children.ParentId as ParentId
					FROM
						Test3799Item a_Children
				) t1
			WHERE
				t1.rn = 1
		) t2 ON item_1.Id = t2.ParentId


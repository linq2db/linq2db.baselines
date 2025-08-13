BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	m_1.Id_1,
	d_1.TagId,
	a_Tag.Name
FROM
	(
		SELECT DISTINCT
			d.Id as Id,
			t1.Id as Id_1
		FROM
			(
				SELECT DISTINCT
					b.Id as Id
				FROM
					Blog b
				WHERE
					b.Id = 1
			) t1
				INNER JOIN Post d ON t1.Id = d.BlogId
	) m_1
		INNER JOIN PostTag d_1 ON m_1.Id = d_1.PostId
		INNER JOIN Tag a_Tag ON d_1.TagId = a_Tag.Id
WHERE
	NOT d_1.IsDeleted
ORDER BY
	d_1.TagId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.Title,
	d.PostContent
FROM
	(
		SELECT DISTINCT
			b.Id as Id
		FROM
			Blog b
		WHERE
			b.Id = 1
	) m_1
		INNER JOIN Post d ON m_1.Id = d.BlogId
ORDER BY
	d.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	b.Id,
	b.Title
FROM
	Blog b
WHERE
	b.Id = 1


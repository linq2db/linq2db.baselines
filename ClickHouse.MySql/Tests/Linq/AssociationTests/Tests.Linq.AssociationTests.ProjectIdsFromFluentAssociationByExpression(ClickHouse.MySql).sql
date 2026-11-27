-- ClickHouse.MySql ClickHouse
INSERT INTO ForumTopic
(
	Id,
	Title,
	Text
)
VALUES
(
	6,
	'title',
	'text'
)

-- ClickHouse.MySql ClickHouse
SELECT
	m_1.Id,
	d.Id
FROM
	(
		SELECT
			x.Id as Id
		FROM
			ForumTopic x
		WHERE
			x.Id = 6
		LIMIT 1
	) m_1
		INNER JOIN ForumMessage d ON m_1.Id = d.TopicId

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id,
	x.Title,
	x.Text
FROM
	ForumTopic x
WHERE
	x.Id = 6
LIMIT 1


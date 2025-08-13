BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Topic
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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id,
	d.Id
FROM
	(
		SELECT
			x.Id as Id
		FROM
			Topic x
		WHERE
			x.Id = 6
		LIMIT 1
	) m_1
		INNER JOIN Message d ON m_1.Id = d.TopicId

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	x.Id,
	x.Title,
	x.Text
FROM
	Topic x
WHERE
	x.Id = 6
LIMIT 1


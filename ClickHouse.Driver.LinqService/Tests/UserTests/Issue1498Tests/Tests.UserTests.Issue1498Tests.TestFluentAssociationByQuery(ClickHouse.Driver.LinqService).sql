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

INSERT INTO Message
(
	Id,
	TopicId,
	Text
)
VALUES
(
	60,
	6,
	'message'
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO Message
(
	Id,
	TopicId,
	Text
)
VALUES
(
	61,
	7,
	'message'
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
		INNER JOIN Message d ON d.TopicId = m_1.Id

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


﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Topic

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Topic
(
	Id    Int32,
	Title Nullable(String),
	Text  Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Message

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Message
(
	Id      Int32,
	TopicId Int32,
	Text    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.Title,
	x.Text
FROM
	Topic x
WHERE
	x.Id = 6
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Message

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Topic


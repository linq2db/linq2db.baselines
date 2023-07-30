BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Topic

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Topic
(
	Id    Int32,
	Title Nullable(String),
	Text  Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Message

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Message
(
	Id      Int32,
	TopicId Int32,
	Text    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Topic
(
	Id,
	Title,
	Text
)
VALUES
(
	toInt32(6),
	'title',
	'text'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result.Id,
	key_data_result.Title,
	key_data_result.Text,
	detail.Id
FROM
	(
		SELECT DISTINCT
			t1.Id as Id,
			t1.Title as Title,
			t1.Text as Text
		FROM
			(
				SELECT
					x.Id as Id,
					x.Title as Title,
					x.Text as Text
				FROM
					Topic x
				WHERE
					x.Id = toInt32(6)
				LIMIT toInt32(1)
			) t1
	) key_data_result
		INNER JOIN Message detail ON key_data_result.Id = detail.TopicId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Title,
	x.Text
FROM
	Topic x
WHERE
	x.Id = toInt32(6)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Message

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Topic


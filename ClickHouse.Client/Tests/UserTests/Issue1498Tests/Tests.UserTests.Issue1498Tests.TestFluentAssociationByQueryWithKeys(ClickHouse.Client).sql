BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Topic

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Topic
(
	Id    Int32,
	Title Nullable(String),
	Text  Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Message

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Message
(
	Id      Int32,
	TopicId Int32,
	Text    Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

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

INSERT INTO Message
(
	Id,
	TopicId,
	Text
)
VALUES
(
	toInt32(60),
	toInt32(6),
	'message'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Message
(
	Id,
	TopicId,
	Text
)
VALUES
(
	toInt32(61),
	toInt32(7),
	'message'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result.Id,
	detail.Id
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			(
				SELECT
					x.Id as Id
				FROM
					Topic x
				WHERE
					x.Id = toInt32(6)
				LIMIT toInt32(1)
			) t1
	) key_data_result
		INNER JOIN Message detail ON detail.TopicId = key_data_result.Id

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


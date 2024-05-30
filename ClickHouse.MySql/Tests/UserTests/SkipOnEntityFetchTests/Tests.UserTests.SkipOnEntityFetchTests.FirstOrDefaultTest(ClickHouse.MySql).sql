BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Attachment

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Attachment
(
	Id            Int64,
	QuestionSetId Int64,
	Content       Nullable(String),
	Question      Nullable(String),
	FileName      Nullable(String),
	FileSize      Int64,
	ContentType   Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Attachment
(
	Id,
	QuestionSetId,
	Content,
	Question,
	FileName,
	FileSize,
	ContentType
)
VALUES
(toInt64(1),toInt64(11),'\x01\x02\x03','SomeQuestion','SomeFile',toInt64(128),'Some')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.QuestionSetId,
	x.Question,
	x.FileName,
	x.FileSize,
	x.ContentType
FROM
	Attachment x
WHERE
	x.Id = toInt64(1)
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Attachment


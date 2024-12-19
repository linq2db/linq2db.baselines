BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4702Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4702Table
(
	Id   Int32,
	Text Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT Max(Id) FROM Issue4702Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4702Table
(
	Id,
	Text
)
VALUES
(1,'Text 1'),
(2,'Text 2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4702Table
(
	Text
)
VALUES
(
	'Text 3'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4702Table


BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1110TB

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue1110TB
(
	Id        Int32,
	TimeStamp DateTime64(7),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue1110TB
(
	Id,
	TimeStamp
)
VALUES
(
	10,
	toDateTime64('2020-02-29 17:54:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1110TB


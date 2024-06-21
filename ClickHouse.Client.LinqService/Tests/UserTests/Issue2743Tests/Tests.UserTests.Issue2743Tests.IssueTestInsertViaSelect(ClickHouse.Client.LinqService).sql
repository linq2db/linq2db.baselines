BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MessageEventDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MessageEventDTO
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MessageEventDTOTb2

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS MessageEventDTOTb2
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO MessageEventDTOTb2
(
	Id
)
SELECT
	x.Id
FROM
	MessageEventDTO x

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MessageEventDTOTb2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS MessageEventDTO


BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Test1585

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE Test1585
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id


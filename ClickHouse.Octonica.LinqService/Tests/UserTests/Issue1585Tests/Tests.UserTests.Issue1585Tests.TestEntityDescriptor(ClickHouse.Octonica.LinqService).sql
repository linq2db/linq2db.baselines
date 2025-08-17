BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS Test1585

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE Test1585
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id


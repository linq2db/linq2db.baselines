-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Test1585

-- ClickHouse.MySql ClickHouse

CREATE TABLE Test1585
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id


BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TestTable
(
	Id Int32,
	Fd Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

/* My Test */
INSERT INTO TestTable
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestTable


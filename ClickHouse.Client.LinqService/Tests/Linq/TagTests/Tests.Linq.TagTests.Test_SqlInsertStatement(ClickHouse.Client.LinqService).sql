BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TestTable
(
	Id Int32,
	Fd Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestTable


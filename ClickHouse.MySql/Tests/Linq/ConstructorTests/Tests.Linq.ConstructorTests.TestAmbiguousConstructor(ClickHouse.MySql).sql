BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ConstructorTestTable
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ConstructorTestTable
(
	Id,
	Value
)
VALUES
(1,'Some')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable


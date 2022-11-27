BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ConstructorTestTable
(
	Value Nullable(String),
	Id    Int32,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ConstructorTestTable
(
	Value,
	Id
)
VALUES
('Some',toInt32(1))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable


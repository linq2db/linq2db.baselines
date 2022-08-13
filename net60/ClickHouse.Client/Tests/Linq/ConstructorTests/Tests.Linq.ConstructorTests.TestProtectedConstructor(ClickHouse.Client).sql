BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ConstructorTestTable
(
	Value Nullable(String),
	Id    Int32,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ConstructorTestTable
(
	Value,
	Id
)
VALUES
('Some',toInt32(1))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Value,
	t1.Id
FROM
	ConstructorTestTable t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable


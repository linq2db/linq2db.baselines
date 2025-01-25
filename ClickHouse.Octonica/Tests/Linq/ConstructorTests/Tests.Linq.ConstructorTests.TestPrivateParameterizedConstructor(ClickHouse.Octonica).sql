BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ConstructorTestTable
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ConstructorTestTable
(
	Id,
	Value
)
VALUES
(5,'Some')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	ConstructorTestTable t1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable


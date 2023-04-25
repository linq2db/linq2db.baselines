﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ConstructorTestTable
(
	Id    Int32,
	Value Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ConstructorTestTable
(
	Id,
	Value
)
VALUES
(toInt32(1),'Some')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConstructorTestTable


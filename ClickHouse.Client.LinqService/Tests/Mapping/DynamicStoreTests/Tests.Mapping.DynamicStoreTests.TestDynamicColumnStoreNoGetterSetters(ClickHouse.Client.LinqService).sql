BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DynamicColumnsTestTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS DynamicColumnsTestTable
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DynamicColumnsTestTable


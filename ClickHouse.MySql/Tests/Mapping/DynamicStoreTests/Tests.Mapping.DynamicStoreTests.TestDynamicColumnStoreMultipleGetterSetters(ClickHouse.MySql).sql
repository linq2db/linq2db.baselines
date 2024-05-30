BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicColumnsTestTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DynamicColumnsTestTable
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicColumnsTestTable


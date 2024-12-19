BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicColumnsTestTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DynamicColumnsTestTable
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Id
FROM
	DynamicColumnsTestTable x

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicColumnsTestTable


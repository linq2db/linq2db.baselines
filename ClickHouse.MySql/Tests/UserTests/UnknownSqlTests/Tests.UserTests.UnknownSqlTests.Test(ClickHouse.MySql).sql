BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CustomTableColumn

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CustomTableColumn
(
	DataTypeID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	0
FROM
	CustomTableColumn x

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CustomTableColumn


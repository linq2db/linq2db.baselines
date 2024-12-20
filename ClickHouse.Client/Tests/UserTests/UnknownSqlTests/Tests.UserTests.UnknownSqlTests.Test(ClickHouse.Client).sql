BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CustomTableColumn

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS CustomTableColumn
(
	DataTypeID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	0
FROM
	CustomTableColumn x

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CustomTableColumn


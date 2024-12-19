BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CustomTableColumn

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CustomTableColumn
(
	DataTypeID Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	0
FROM
	CustomTableColumn x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CustomTableColumn


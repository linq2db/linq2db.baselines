BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Entry

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Entry
(
	Id     UUID,
	RecSrc Nullable(String),
	Value  Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Entry


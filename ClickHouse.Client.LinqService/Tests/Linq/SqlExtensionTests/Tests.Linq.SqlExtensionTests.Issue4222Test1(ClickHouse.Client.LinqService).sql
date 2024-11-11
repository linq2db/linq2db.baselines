BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Entry

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Entry
(
	Id     UUID,
	RecSrc Nullable(String),
	Value  Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Entry


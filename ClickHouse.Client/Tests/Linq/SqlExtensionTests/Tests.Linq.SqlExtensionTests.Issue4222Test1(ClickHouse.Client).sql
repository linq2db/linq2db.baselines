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

SELECT
	e.Id,
	e.RecSrc,
	e.Value
FROM
	Entry e
WHERE
	e.RecSrc = 'default' AND e.Value = 2007

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Entry


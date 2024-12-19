BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Entry

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Entry
(
	Id     UUID,
	RecSrc Nullable(String),
	Value  Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id,
	e.RecSrc,
	e.Value
FROM
	Entry e
WHERE
	e.RecSrc = 'default' AND e.Value = 2007

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Entry


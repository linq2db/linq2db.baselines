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

SELECT
	e.Id,
	e.RecSrc,
	e.Value
FROM
	Entry e
WHERE
	(e.RecSrc, e.Value) IN (('default', 2007), ('other', 2008))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Entry


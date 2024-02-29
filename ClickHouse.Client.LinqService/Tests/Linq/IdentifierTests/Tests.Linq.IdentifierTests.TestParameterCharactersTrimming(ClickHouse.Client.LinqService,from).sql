BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS testparams

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS testparams
(
	from Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	testparams
UPDATE
	from = toInt32(2)
WHERE
	from = toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS testparams


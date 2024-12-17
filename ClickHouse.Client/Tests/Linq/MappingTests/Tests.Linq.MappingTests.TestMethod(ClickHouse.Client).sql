BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Document

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Document
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id
FROM
	Document s

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Document


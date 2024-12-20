BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Document

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Document
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	s.Id
FROM
	Document s

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Document


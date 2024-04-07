BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

CREATE TEMPORARY TABLE TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE TempTable


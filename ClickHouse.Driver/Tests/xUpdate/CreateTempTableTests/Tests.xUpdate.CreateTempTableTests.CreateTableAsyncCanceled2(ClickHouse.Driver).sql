BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

CREATE TEMPORARY TABLE TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE TempTable


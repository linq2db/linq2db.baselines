BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS TempTable
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
-- ClickHouse.Driver ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable


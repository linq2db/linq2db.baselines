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
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK TempTable(ID)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TempTable


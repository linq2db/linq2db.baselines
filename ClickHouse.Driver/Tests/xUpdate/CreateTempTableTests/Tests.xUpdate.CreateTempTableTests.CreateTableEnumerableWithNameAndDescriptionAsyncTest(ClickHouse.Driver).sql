BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS TempTable
(
	Name String
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK TempTable(Name)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable


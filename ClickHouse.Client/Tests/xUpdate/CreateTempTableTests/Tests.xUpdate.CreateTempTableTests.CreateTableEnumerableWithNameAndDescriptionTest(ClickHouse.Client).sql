BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	Name String
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK TempTable(Name)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TempTable


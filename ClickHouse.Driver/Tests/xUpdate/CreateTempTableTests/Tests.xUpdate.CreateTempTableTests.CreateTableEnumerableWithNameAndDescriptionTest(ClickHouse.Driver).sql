-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Driver ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	Name String
)
ENGINE = Memory()

INSERT ASYNC BULK TempTable(Name)

-- ClickHouse.Driver ClickHouse

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TempTable


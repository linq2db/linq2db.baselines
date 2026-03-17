-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	Name String,

	PRIMARY KEY (Name)
)
ENGINE = MergeTree()
ORDER BY Name

INSERT INTO TempTable(Name) VALUES

-- ClickHouse.Octonica ClickHouse

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable


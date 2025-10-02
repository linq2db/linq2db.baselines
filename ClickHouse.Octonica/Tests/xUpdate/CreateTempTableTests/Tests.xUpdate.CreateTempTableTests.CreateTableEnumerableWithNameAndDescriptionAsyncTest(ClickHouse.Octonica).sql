BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS TempTable
(
	Name String,

	PRIMARY KEY (Name)
)
ENGINE = MergeTree()
ORDER BY Name

BeforeExecute
INSERT INTO TempTable(Name) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t.Name
FROM
	Person p
		INNER JOIN TempTable t ON p.FirstName = t.Name

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable


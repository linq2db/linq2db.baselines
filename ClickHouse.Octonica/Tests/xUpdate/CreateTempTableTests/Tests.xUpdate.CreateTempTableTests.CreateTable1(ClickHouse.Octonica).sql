-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	TempTable t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable


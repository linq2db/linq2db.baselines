-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse

DROP TABLE TempTable


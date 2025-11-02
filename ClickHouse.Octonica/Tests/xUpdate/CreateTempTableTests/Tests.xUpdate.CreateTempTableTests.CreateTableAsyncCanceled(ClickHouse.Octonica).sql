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
	ID Int32
)
ENGINE = Memory()

-- ClickHouse.Octonica ClickHouse

DROP TABLE TempTable


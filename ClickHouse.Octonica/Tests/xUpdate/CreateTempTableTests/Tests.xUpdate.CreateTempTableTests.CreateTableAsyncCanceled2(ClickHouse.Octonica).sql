-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE TempTable
(
	ID Int32
)
ENGINE = Memory()

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

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Octonica ClickHouse

DROP TABLE TempTable


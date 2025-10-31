-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32
)
ENGINE = Memory()

INSERT INTO TempTable(ID) VALUES

-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable


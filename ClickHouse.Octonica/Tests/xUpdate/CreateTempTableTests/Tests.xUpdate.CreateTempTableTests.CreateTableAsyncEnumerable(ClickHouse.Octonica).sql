﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
INSERT INTO TempTable(ID) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS TempTable


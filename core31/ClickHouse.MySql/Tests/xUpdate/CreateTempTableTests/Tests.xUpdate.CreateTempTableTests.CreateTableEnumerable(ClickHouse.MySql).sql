BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TempTable
(
	ID
)
VALUES
(toInt32(1)),
(toInt32(2)),
(toInt32(3)),
(toInt32(4)),
(toInt32(5)),
(toInt32(6)),
(toInt32(7))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TempTable


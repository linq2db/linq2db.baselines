BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE DropTableTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1


BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE IF EXISTS DropTableTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TABLE DropTableTest
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ID
FROM
	DropTableTest t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

DROP TABLE DropTableTest

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.ID
FROM
	DropTableTest t1


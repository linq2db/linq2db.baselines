-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DropTableTest

-- ClickHouse.Octonica ClickHouse

CREATE TABLE DropTableTest
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse

INSERT INTO DropTableTest
(
	ID
)
VALUES
(
	123
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1

-- ClickHouse.Octonica ClickHouse

DROP TABLE DropTableTest

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID
FROM
	DropTableTest t1


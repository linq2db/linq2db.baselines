-- ClickHouse.MySql ClickHouse

CREATE TABLE Table
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.MySql ClickHouse

DROP TABLE Table


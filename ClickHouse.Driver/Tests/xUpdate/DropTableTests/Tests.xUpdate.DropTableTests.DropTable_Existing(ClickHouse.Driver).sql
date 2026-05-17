-- ClickHouse.Driver ClickHouse

CREATE TABLE Table
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Driver ClickHouse

DROP TABLE Table


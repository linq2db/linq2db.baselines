-- ClickHouse.Octonica ClickHouse

CREATE TABLE Table
(
	ID Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse

DROP TABLE Table


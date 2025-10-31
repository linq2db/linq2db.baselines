-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey2
(
	Key Int32,

	PRIMARY KEY (Key)
)
ENGINE = MergeTree()
ORDER BY Key

INSERT INTO TableWithPrimaryKey2(Key) VALUES

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey2


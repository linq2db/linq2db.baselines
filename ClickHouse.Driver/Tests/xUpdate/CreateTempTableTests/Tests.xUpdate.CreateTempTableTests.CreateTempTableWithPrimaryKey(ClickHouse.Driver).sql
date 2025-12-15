-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey
(
	Key Int32,

	PRIMARY KEY (Key)
)
ENGINE = MergeTree()
ORDER BY Key

-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey


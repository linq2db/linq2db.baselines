-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey
(
	Key Int32,

	PRIMARY KEY (Key)
)
ENGINE = MergeTree()
ORDER BY Key

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey


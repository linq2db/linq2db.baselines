BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

CREATE TEMPORARY TABLE TableWithPrimaryKey
(
	Key Int32,

	PRIMARY KEY (Key)
)
ENGINE = MergeTree()
ORDER BY Key

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

DROP TABLE IF EXISTS TableWithPrimaryKey


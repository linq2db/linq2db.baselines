BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey
(
	Key Int32,

	PRIMARY KEY (Key)
)
ENGINE = MergeTree()
ORDER BY Key

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey


BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey2
(
	Key Int32,

	PRIMARY KEY (Key)
)
ENGINE = MergeTree()
ORDER BY Key

BeforeExecute
INSERT ASYNC BULK TableWithPrimaryKey2(Key)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey2


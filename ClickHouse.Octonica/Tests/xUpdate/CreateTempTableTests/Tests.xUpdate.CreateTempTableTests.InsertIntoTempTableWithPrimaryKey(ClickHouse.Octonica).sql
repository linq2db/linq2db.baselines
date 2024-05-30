BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey2
(
	Key Int32,

	PRIMARY KEY (Key)
)
ENGINE = MergeTree()
ORDER BY Key

BeforeExecute
INSERT INTO TableWithPrimaryKey2(Key) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey2


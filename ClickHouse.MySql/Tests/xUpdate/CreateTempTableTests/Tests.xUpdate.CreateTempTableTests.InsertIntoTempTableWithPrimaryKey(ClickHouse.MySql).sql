BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey2
(
	Key Int32,

	PRIMARY KEY (Key)
)
ENGINE = MergeTree()
ORDER BY Key

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TableWithPrimaryKey2
(
	Key
)
VALUES
(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey2


BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey
(
	Key Int32,

	 PRIMARY KEY (Key)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey


BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey2
(
	Key Int32,

	 PRIMARY KEY (Key)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TableWithPrimaryKey2
(
	Key
)
VALUES
(toInt32(1))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey2


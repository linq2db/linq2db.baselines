BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE TableWithPrimaryKey
(
	Key Int32,

	 PRIMARY KEY (Key)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS TableWithPrimaryKey


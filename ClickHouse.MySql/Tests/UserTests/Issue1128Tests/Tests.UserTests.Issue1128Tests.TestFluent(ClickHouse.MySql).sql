BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AttributeBase

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AttributeBase
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AttributeBase
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AttributeBase


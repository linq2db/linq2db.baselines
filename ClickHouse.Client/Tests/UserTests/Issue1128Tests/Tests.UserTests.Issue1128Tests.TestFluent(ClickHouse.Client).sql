BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AttributeBase

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS AttributeBase
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AttributeBase
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AttributeBase


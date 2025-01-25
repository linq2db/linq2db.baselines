BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AttributeBase

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS AttributeBase
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AttributeBase
(
	Id
)
VALUES
(
	1
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AttributeBase


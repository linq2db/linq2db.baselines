BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DynamicTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS DynamicTable
(
	ID               Int32,
	`Not Identifier` Int32,
	`Some Value`     Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO DynamicTable
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(
	77,
	0
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	d.`Not Identifier`
FROM
	DynamicTable d

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS DynamicTable


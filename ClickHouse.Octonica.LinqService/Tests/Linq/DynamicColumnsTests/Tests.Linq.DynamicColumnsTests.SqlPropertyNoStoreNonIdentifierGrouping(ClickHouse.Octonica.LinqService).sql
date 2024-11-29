BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO DynamicTable
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(
	77,
	5
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DynamicTable
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(
	77,
	5
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	g_1.`Not Identifier`,
	COUNT(*),
	sum(g_1.`Some Value`)
FROM
	DynamicTable g_1
GROUP BY
	g_1.`Not Identifier`

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicTable


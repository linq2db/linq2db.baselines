BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO DynamicTable
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(77,5),
(77,5)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_1.`Not Identifier`,
	COUNT(*),
	sumOrNull(g_1.`Some Value`)
FROM
	DynamicTable g_1
GROUP BY
	g_1.`Not Identifier`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicTable


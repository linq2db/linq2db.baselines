﻿BeforeExecute
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
(toInt32(77),toInt32(5)),
(toInt32(77),toInt32(5))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.`Not Identifier`,
	Count(*),
	sumOrNull(t1.`Some Value`)
FROM
	DynamicTable t1
GROUP BY
	t1.`Not Identifier`

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicTable


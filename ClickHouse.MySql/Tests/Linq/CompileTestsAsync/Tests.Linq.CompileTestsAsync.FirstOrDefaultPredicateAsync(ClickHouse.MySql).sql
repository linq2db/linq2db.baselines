BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AsyncDataTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AsyncDataTable
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	c_1.Id
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id = 2
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AsyncDataTable


BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AsyncDataTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS AsyncDataTable
(
	Id Int32,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(toInt32(1)),
(toInt32(2)),
(toInt32(3)),
(toInt32(4)),
(toInt32(5)),
(toInt32(6)),
(toInt32(7)),
(toInt32(8)),
(toInt32(9)),
(toInt32(10))

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	maxOrNull(c_1.Id)
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id > toInt32(2)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AsyncDataTable


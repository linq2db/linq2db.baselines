BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS OrderByDistinctData

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS OrderByDistinctData
(
	Id            Int32,
	DuplicateData Nullable(String),
	OrderData1    Int32,
	OrderData2    Int32,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(toInt32(1),'One',toInt32(1),toInt32(1)),
(toInt32(2),'One',toInt32(1),toInt32(10)),
(toInt32(3),'One',toInt32(2),toInt32(2)),
(toInt32(4),'One',toInt32(3),toInt32(3)),
(toInt32(5),'One',toInt32(4),toInt32(4)),
(toInt32(6),'One',toInt32(5),toInt32(5)),
(toInt32(10),'Two',toInt32(1),toInt32(1)),
(toInt32(20),'Two',toInt32(1),toInt32(10)),
(toInt32(30),'Two',toInt32(2),toInt32(2)),
(toInt32(40),'Two',toInt32(3),toInt32(3)),
(toInt32(50),'Two',toInt32(4),toInt32(4)),
(toInt32(60),'Two',toInt32(5),toInt32(5)),
(toInt32(100),'Three',toInt32(1),toInt32(1)),
(toInt32(200),'Three',toInt32(1),toInt32(10)),
(toInt32(300),'Three',toInt32(2),toInt32(2)),
(toInt32(400),'Three',toInt32(3),toInt32(3)),
(toInt32(500),'Three',toInt32(4),toInt32(4)),
(toInt32(600),'Three',toInt32(5),toInt32(5))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 % toInt32(3)
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
GROUP BY
	x.DuplicateData
ORDER BY
	maxOrNull(x.OrderData1 % toInt32(3))
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS OrderByDistinctData


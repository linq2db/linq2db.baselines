﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderByDistinctData

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	toInt32(1),
	'One',
	toInt32(1),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	toInt32(10),
	'Two',
	toInt32(1),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	toInt32(100),
	'Three',
	toInt32(1),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC,
	x.OrderData2 DESC
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC,
	x.OrderData2 DESC
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT toInt32(0), toInt32(3)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderByDistinctData


BeforeExecute
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
	1,
	'One',
	1,
	1
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
	10,
	'Two',
	1,
	1
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
	100,
	'Three',
	1,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC,
	x.OrderData2 DESC
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT 0, 3

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS OrderByDistinctData


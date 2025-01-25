BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderByDistinctData

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	2,
	'One',
	1,
	10
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	3,
	'One',
	2,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	4,
	'One',
	3,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	5,
	'One',
	4,
	4
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	6,
	'One',
	5,
	5
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	20,
	'Two',
	1,
	10
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	30,
	'Two',
	2,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	40,
	'Two',
	3,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	50,
	'Two',
	4,
	4
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	60,
	'Two',
	5,
	5
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	200,
	'Three',
	1,
	10
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	300,
	'Three',
	2,
	2
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	400,
	'Three',
	3,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	500,
	'Three',
	4,
	4
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	600,
	'Three',
	5,
	5
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	q1.Id,
	q1.DuplicateData,
	q1.OrderData1,
	q1.OrderData2
FROM
	(
		SELECT
			t1.Id as Id
		FROM
			OrderByDistinctData t1
		ORDER BY
			t1.OrderData2
		LIMIT 3
	) q2
		INNER JOIN OrderByDistinctData q1 ON q1.Id = q2.Id
ORDER BY
	q1.OrderData1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderByDistinctData


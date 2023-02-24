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
	toInt32(1),
	'One',
	toInt32(1),
	toInt32(1)
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
	toInt32(2),
	'One',
	toInt32(1),
	toInt32(10)
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
	toInt32(3),
	'One',
	toInt32(2),
	toInt32(2)
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
	toInt32(4),
	'One',
	toInt32(3),
	toInt32(3)
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
	toInt32(5),
	'One',
	toInt32(4),
	toInt32(4)
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
	toInt32(6),
	'One',
	toInt32(5),
	toInt32(5)
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
	toInt32(10),
	'Two',
	toInt32(1),
	toInt32(1)
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
	toInt32(20),
	'Two',
	toInt32(1),
	toInt32(10)
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
	toInt32(30),
	'Two',
	toInt32(2),
	toInt32(2)
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
	toInt32(40),
	'Two',
	toInt32(3),
	toInt32(3)
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
	toInt32(50),
	'Two',
	toInt32(4),
	toInt32(4)
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
	toInt32(60),
	'Two',
	toInt32(5),
	toInt32(5)
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
	toInt32(100),
	'Three',
	toInt32(1),
	toInt32(1)
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
	toInt32(200),
	'Three',
	toInt32(1),
	toInt32(10)
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
	toInt32(300),
	'Three',
	toInt32(2),
	toInt32(2)
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
	toInt32(400),
	'Three',
	toInt32(3),
	toInt32(3)
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
	toInt32(500),
	'Three',
	toInt32(4),
	toInt32(4)
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
	toInt32(600),
	'Three',
	toInt32(5),
	toInt32(5)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	x_3.Id,
	x_3.Id
FROM
	(
		SELECT
			t1.Id as Id,
			t1.DuplicateData as DuplicateData,
			t1.OrderData1 as OrderData1,
			t1.OrderData2 as OrderData2
		FROM
			(
				SELECT
					x.Id as Id,
					x.DuplicateData as DuplicateData,
					x.OrderData1 as OrderData1,
					x.OrderData2 as OrderData2
				FROM
					OrderByDistinctData x
				WHERE
					x.Id BETWEEN toInt32(1) AND toInt32(9)
				UNION ALL
				SELECT
					x_1.Id as Id,
					x_1.DuplicateData as DuplicateData,
					x_1.OrderData1 as OrderData1,
					x_1.OrderData2 as OrderData2
				FROM
					OrderByDistinctData x_1
				WHERE
					x_1.Id BETWEEN toInt32(10) AND toInt32(90)
			) t1
		UNION DISTINCT
		SELECT
			x_2.Id as Id,
			x_2.DuplicateData as DuplicateData,
			x_2.OrderData1 as OrderData1,
			x_2.OrderData2 as OrderData2
		FROM
			OrderByDistinctData x_2
		WHERE
			x_2.Id BETWEEN toInt32(100) AND toInt32(900)
	) x_3
ORDER BY
	x_3.DuplicateData

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS OrderByDistinctData


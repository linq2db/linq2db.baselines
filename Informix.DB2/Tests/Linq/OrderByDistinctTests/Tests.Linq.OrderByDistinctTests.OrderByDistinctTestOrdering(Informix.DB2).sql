BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS OrderByDistinctData

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS OrderByDistinctData
(
	Id            Int           NOT NULL,
	DuplicateData NVarChar(255)     NULL,
	OrderData1    Int           NOT NULL,
	OrderData2    Int           NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 1

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 1

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 100
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 1

INSERT INTO OrderByDistinctData
(
	Id,
	DuplicateData,
	OrderData1,
	OrderData2
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3 DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3 DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3 DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3 DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3 DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC,
	x.OrderData2 DESC

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3 DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 0 FIRST 3
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS OrderByDistinctData


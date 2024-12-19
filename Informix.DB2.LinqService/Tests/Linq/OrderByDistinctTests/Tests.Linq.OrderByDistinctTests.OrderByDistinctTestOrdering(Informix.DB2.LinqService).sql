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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC,
	x.OrderData2 DESC

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS OrderByDistinctData


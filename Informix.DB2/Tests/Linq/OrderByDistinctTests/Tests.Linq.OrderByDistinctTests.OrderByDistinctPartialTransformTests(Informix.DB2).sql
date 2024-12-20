﻿BeforeExecute
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
SET     @Id = 2
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 3
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 4
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 5
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 6
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 5

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
SET     @Id = 20
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 30
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 40
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 50
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 60
DECLARE @DuplicateData VarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 5

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 200
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 10

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
SET     @Id = 300
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 2

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
SET     @Id = 400
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 3

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
SET     @Id = 500
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 4

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
SET     @Id = 600
DECLARE @DuplicateData VarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Integer(4) -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Integer(4) -- Int32
SET     @OrderData2 = 5

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
	x.DuplicateData,
	x.OrderData2
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData2 DESC

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS OrderByDistinctData


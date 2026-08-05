-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

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

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

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

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

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

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

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

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

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

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

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


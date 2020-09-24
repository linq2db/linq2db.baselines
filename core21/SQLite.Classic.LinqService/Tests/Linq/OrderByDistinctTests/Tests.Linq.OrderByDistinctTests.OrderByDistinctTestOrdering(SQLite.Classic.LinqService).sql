﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [OrderByDistinctData]
(
	[Id]            INTEGER       NOT NULL,
	[DuplicateData] NVarChar(255)     NULL,
	[OrderData1]    INTEGER       NOT NULL,
	[OrderData2]    INTEGER       NOT NULL,

	CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(1,'One',1,1),
(10,'Two',1,1),
(100,'Three',1,1)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1] DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1] DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2] DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2] DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1] DESC,
	[x].[OrderData2] DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1] DESC,
	[x].[OrderData2] DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2] DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData1],
	[x].[OrderData2] DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [OrderByDistinctData]


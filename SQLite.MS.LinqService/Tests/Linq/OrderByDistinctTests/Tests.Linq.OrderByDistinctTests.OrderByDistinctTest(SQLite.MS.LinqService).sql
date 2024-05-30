BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [OrderByDistinctData]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [OrderByDistinctData]
(
	[Id]            INTEGER       NOT NULL,
	[DuplicateData] NVarChar(255)     NULL,
	[OrderData1]    INTEGER       NOT NULL,
	[OrderData2]    INTEGER       NOT NULL,

	CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 10

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 2

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 3

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 4

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 5

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 20
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 10

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 30
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 2

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 40
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 3

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 50
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 4

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 60
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 5

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 100
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 200
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 10

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 300
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 2

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 400
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 3

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 500
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 4

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 600
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1  -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2  -- Int32
SET     @OrderData2 = 5

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	@Id,
	@DuplicateData,
	@OrderData1,
	@OrderData2
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[g_1].[DuplicateData]
FROM
	[OrderByDistinctData] [g_1]
GROUP BY
	[g_1].[DuplicateData]
ORDER BY
	MAX([g_1].[OrderData1])
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 3
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[g_1].[DuplicateData]
FROM
	[OrderByDistinctData] [g_1]
GROUP BY
	[g_1].[DuplicateData]
ORDER BY
	MIN([g_1].[OrderData1]) DESC
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [OrderByDistinctData]


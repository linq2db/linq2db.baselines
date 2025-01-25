BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [OrderByDistinctData]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[OrderByDistinctData]', N'U') IS NULL)
	CREATE TABLE [OrderByDistinctData]
	(
		[Id]            Int            NOT NULL,
		[DuplicateData] NVarChar(4000)     NULL,
		[OrderData1]    Int            NOT NULL,
		[OrderData2]    Int            NOT NULL,

		CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 30
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 40
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 50
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 60
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 200
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 300
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 400
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 500
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 600
DECLARE @DuplicateData NVarChar(4000) -- String
SET     @DuplicateData = N'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [OrderByDistinctData]


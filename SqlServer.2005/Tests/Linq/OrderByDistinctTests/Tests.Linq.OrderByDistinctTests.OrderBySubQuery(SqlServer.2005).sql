BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[OrderByDistinctData]', N'U') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
SELECT 1,N'One',1,1 UNION ALL
SELECT 2,N'One',1,10 UNION ALL
SELECT 3,N'One',2,2 UNION ALL
SELECT 4,N'One',3,3 UNION ALL
SELECT 5,N'One',4,4 UNION ALL
SELECT 6,N'One',5,5 UNION ALL
SELECT 10,N'Two',1,1 UNION ALL
SELECT 20,N'Two',1,10 UNION ALL
SELECT 30,N'Two',2,2 UNION ALL
SELECT 40,N'Two',3,3 UNION ALL
SELECT 50,N'Two',4,4 UNION ALL
SELECT 60,N'Two',5,5 UNION ALL
SELECT 100,N'Three',1,1 UNION ALL
SELECT 200,N'Three',1,10 UNION ALL
SELECT 300,N'Three',2,2 UNION ALL
SELECT 400,N'Three',3,3 UNION ALL
SELECT 500,N'Three',4,4 UNION ALL
SELECT 600,N'Three',5,5

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t_1].[DuplicateData],
	(
		SELECT
			COUNT(*)
		FROM
			[OrderByDistinctData] [c_1]
		WHERE
			([c_1].[DuplicateData] = [t_1].[DuplicateData] OR [c_1].[DuplicateData] IS NULL AND [t_1].[DuplicateData] IS NULL)
	)
FROM
	(
		SELECT TOP (@take)
			[t].[Id],
			[t].[DuplicateData]
		FROM
			[OrderByDistinctData] [t]
	) [t_1]
ORDER BY
	[t_1].[Id] DESC

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[OrderByDistinctData]', N'U') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]


﻿BeforeExecute
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

SELECT
	[x_3].[Id],
	[x_3].[Id]
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[DuplicateData],
			[t1].[OrderData1],
			[t1].[OrderData2]
		FROM
			(
				SELECT
					[x].[Id],
					[x].[DuplicateData],
					[x].[OrderData1],
					[x].[OrderData2]
				FROM
					[OrderByDistinctData] [x]
				WHERE
					[x].[Id] BETWEEN 1 AND 9
				UNION ALL
				SELECT
					[x_1].[Id],
					[x_1].[DuplicateData],
					[x_1].[OrderData1],
					[x_1].[OrderData2]
				FROM
					[OrderByDistinctData] [x_1]
				WHERE
					[x_1].[Id] BETWEEN 10 AND 90
			) [t1]
		UNION
		SELECT
			[x_2].[Id],
			[x_2].[DuplicateData],
			[x_2].[OrderData1],
			[x_2].[OrderData2]
		FROM
			[OrderByDistinctData] [x_2]
		WHERE
			[x_2].[Id] BETWEEN 100 AND 900
	) [x_3]
GROUP BY
	[x_3].[Id],
	[x_3].[Id]
ORDER BY
	Max([x_3].[DuplicateData])

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[OrderByDistinctData]', N'U') IS NOT NULL)
	DROP TABLE [OrderByDistinctData]


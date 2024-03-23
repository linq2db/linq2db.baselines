BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [OrderByDistinctData]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(1,N'One',1,1),
(2,N'One',1,10),
(3,N'One',2,2),
(4,N'One',3,3),
(5,N'One',4,4),
(6,N'One',5,5),
(10,N'Two',1,1),
(20,N'Two',1,10),
(30,N'Two',2,2),
(40,N'Two',3,3),
(50,N'Two',4,4),
(60,N'Two',5,5),
(100,N'Three',1,1),
(200,N'Three',1,10),
(300,N'Three',2,2),
(400,N'Three',3,3),
(500,N'Three',4,4),
(600,N'Three',5,5)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT
	[x].[DuplicateData],
	[x].[OrderData2]
FROM
	[OrderByDistinctData] [x]
ORDER BY
	[x].[OrderData2] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [OrderByDistinctData]


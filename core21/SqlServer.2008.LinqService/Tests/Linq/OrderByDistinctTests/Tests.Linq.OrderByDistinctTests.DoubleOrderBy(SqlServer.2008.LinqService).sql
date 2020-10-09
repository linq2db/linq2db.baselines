﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [OrderByDistinctData]
(
	[Id]            Int            NOT NULL,
	[DuplicateData] NVarChar(4000)     NULL,
	[OrderData1]    Int            NOT NULL,
	[OrderData2]    Int            NOT NULL,

	CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 3

SELECT 
	[c_1].[Id], 
	[c_1].[DuplicateData], 
	[c_1].[OrderData1], 
	[c_1].[OrderData2]
FROM
	( 
		SELECT TOP (@take) 
			[t1].[Id]
		FROM
			[OrderByDistinctData] [t1]
		ORDER BY
			[t1].[OrderData2]
	) [q2]
		INNER JOIN [OrderByDistinctData] [c_1] ON [c_1].[Id] = [q2].[Id]
ORDER BY
	[c_1].[OrderData1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [OrderByDistinctData]


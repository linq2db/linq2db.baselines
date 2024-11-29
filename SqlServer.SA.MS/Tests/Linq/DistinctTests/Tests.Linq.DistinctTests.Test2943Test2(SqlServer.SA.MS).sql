BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [DistinctOrderByTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NULL)
	CREATE TABLE [DistinctOrderByTable]
	(
		[Id] Int            NOT NULL,
		[F1] Int            NOT NULL,
		[F2] NVarChar(4000)     NULL,
		[F3] Int            NOT NULL,

		CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(8,8,N'8',5),
(3,3,N'3',3),
(2,2,N'2',1),
(6,3,N'3',4),
(1,3,N'3',7),
(5,5,N'5',2),
(7,2,N'2',8),
(4,4,N'4',6)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT DISTINCT
	[r].[F1],
	[r].[F2]
FROM
	[DistinctOrderByTable] [r]
ORDER BY
	[r].[F1] DESC

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [DistinctOrderByTable]


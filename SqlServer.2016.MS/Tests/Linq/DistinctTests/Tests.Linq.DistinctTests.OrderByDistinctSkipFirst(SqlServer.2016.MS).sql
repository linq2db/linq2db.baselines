BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [DistinctOrderByTable]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t3].[F2]
FROM
	(
		SELECT DISTINCT
			[t2].[F1],
			[t2].[F2]
		FROM
			(
				SELECT
					[t1].[F1],
					[t1].[F2]
				FROM
					[DistinctOrderByTable] [t1]
				ORDER BY
					[t1].[F3] DESC
				OFFSET @skip ROWS
			) [t2]
	) [t3]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [DistinctOrderByTable]


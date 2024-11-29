BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
SELECT 8,8,N'8',5 UNION ALL
SELECT 3,3,N'3',3 UNION ALL
SELECT 2,2,N'2',1 UNION ALL
SELECT 6,3,N'3',4 UNION ALL
SELECT 1,3,N'3',7 UNION ALL
SELECT 5,5,N'5',2 UNION ALL
SELECT 7,2,N'2',8 UNION ALL
SELECT 4,4,N'4',6

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t4].[F2]
FROM
	(
		SELECT DISTINCT
			[t3].[F1],
			[t3].[F2]
		FROM
			(
				SELECT
					[t2].[F1],
					[t2].[F2]
				FROM
					(
						SELECT
							[t1].[F1],
							[t1].[F2],
							ROW_NUMBER() OVER (ORDER BY [t1].[F3] DESC) as [RN]
						FROM
							[DistinctOrderByTable] [t1]
					) [t2]
				WHERE
					[t2].[RN] > @skip
			) [t3]
	) [t4]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]


BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NULL)
	CREATE TABLE [DistinctOrderByTable]
	(
		[Id] Int            NOT NULL,
		[F1] Int            NOT NULL,
		[F2] NVarChar(4000)     NULL,

		CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(8,8,N'8'),
(3,3,N'3'),
(2,2,N'2'),
(6,3,N'3'),
(1,3,N'3'),
(5,5,N'5'),
(7,2,N'2'),
(4,4,N'4')

BeforeExecute
-- SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 3

SELECT
	[t1].[F2]
FROM
	(
		SELECT
			[_1].[F2],
			ROW_NUMBER() OVER (ORDER BY [_1].[F1] DESC) as [RN]
		FROM
			(
				SELECT DISTINCT
					[_].[F1],
					[_].[F2]
				FROM
					[DistinctOrderByTable] [_]
			) [_1]
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= @take_1

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]


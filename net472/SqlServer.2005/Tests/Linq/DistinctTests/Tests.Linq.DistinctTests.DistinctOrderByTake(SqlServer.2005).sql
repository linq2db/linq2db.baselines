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

		CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
SELECT 8,8,N'8' UNION ALL
SELECT 3,3,N'3' UNION ALL
SELECT 2,2,N'2' UNION ALL
SELECT 6,3,N'3' UNION ALL
SELECT 1,3,N'3' UNION ALL
SELECT 5,5,N'5' UNION ALL
SELECT 7,2,N'2' UNION ALL
SELECT 4,4,N'4'

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[_1].[F2]
FROM
	(
		SELECT DISTINCT
			[_].[F1],
			[_].[F2]
		FROM
			[DistinctOrderByTable] [_]
	) [_1]
ORDER BY
	[_1].[F1] DESC

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DistinctOrderByTable]', N'U') IS NOT NULL)
	DROP TABLE [DistinctOrderByTable]


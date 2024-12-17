BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [FewNumberEntity]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[FewNumberEntity]', N'U') IS NULL)
	CREATE TABLE [FewNumberEntity]
	(
		[Id]     Int NOT NULL,
		[UserId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [LargeNumberEntity]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[LargeNumberEntity]', N'U') IS NULL)
	CREATE TABLE [LargeNumberEntity]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [SomeTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[SomeTable]', N'U') IS NULL)
	CREATE TABLE [SomeTable]
	(
		[LargeNumberEntityId] Int NOT NULL,
		[Value]               Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[y].[Id],
	[a_SomeValue].[Value]
FROM
	[FewNumberEntity] [x]
		INNER JOIN [LargeNumberEntity] [y] ON [x].[Id] = [y].[Id]
		CROSS APPLY (
			SELECT 
				COUNT(*) as [Value] 
			FROM 
				[dbo].[SomeTable] [st] WITH(NOLOCK) 
			WHERE 
				[st].[LargeNumberEntityId]=[y].[Id]
		) [a_SomeValue]
WHERE
	[x].[UserId] = 123

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [SomeTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [LargeNumberEntity]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [FewNumberEntity]


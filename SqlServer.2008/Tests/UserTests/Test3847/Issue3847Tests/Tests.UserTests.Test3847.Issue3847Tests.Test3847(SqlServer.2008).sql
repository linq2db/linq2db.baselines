BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = NULL
DECLARE @p_1 DateTime2
SET     @p_1 = NULL

SELECT
	[t3].[Id],
	CASE
		WHEN [t3].[Value_1] IS NOT NULL THEN [t3].[Value_1]
		ELSE @p
	END,
	CASE
		WHEN [t3].[Value_1_1] IS NOT NULL THEN [t3].[Value_1_1]
		ELSE @p_1
	END
FROM
	(
		SELECT
			[outfeed].[Id],
			(
				SELECT TOP (1)
					[t1].[Value]
				FROM
					(VALUES
						('e2898c5f-d271-4bbf-afff-c52e26e818f8',CAST('2024-07-14T18:35:48.6872193' AS DATETIME2)),
						('68ea4c7d-b2a2-45bf-8ff9-79956f090b2d',CAST('2024-07-14T18:35:48.6882671' AS DATETIME2)),
						('da18e0df-a611-44a4-862d-c75c88401f86',CAST('2024-07-14T18:35:48.6882675' AS DATETIME2))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('ae022f12-9fe2-4458-9cd0-2bf6eb1189b1',CAST('2024-07-14T18:35:48.6882679' AS DATETIME2)),
						('7b40e90b-7d28-4bb1-bc3b-cd8833867ef1',CAST('2024-07-14T18:35:48.6882684' AS DATETIME2))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


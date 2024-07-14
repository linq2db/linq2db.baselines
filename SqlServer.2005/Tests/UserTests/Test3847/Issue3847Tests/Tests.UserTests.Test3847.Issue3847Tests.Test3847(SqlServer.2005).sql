BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @p DateTime
SET     @p = NULL
DECLARE @p_1 DateTime
SET     @p_1 = NULL

SELECT
	[outfeed].[Id],
	CASE
		WHEN [t2].[Value_1] IS NOT NULL THEN [t2].[Value_1]
		ELSE @p
	END,
	CASE
		WHEN [t4].[Value_1] IS NOT NULL THEN [t4].[Value_1]
		ELSE @p_1
	END
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]
		LEFT JOIN (
			SELECT
				[t1].[Value] as [Value_1],
				ROW_NUMBER() OVER (PARTITION BY [t1].[Key] ORDER BY [t1].[Key]) as [rn],
				[t1].[Key] as [Key_1]
			FROM
				(
					SELECT '49f6e6ba-5133-4bfa-92e9-9eb25829784f' AS [Key], CAST('2024-07-14T18:08:31.737' AS DATETIME) AS [Value]
					UNION ALL
					SELECT '2d16a01a-f45b-4109-aae9-393c26bf467f', CAST('2024-07-14T18:08:31.738' AS DATETIME)
					UNION ALL
					SELECT '6c4b0f35-4bf3-4a19-8cf4-28d6396f0e8a', CAST('2024-07-14T18:08:31.738' AS DATETIME)) [t1]
		) [t2] ON [t2].[Key_1] = [outfeed].[Id] AND [t2].[rn] <= 1
		LEFT JOIN (
			SELECT
				[t3].[Value] as [Value_1],
				ROW_NUMBER() OVER (PARTITION BY [t3].[Key] ORDER BY [t3].[Key]) as [rn],
				[t3].[Key] as [Key_1]
			FROM
				(
					SELECT '757292e9-80d6-4c04-a106-981142d041aa' AS [Key], CAST('2024-07-14T18:08:31.738' AS DATETIME) AS [Value]
					UNION ALL
					SELECT 'c6b0ea2f-872b-462a-818f-fd5239b03219', CAST('2024-07-14T18:08:31.738' AS DATETIME)) [t3]
		) [t4] ON [t4].[Key_1] = [outfeed].[Id] AND [t4].[rn] <= 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


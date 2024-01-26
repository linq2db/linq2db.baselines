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
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[outfeed].[Id],
	[t1].[LastCheck],
	[t2].[NextCheck]
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]
		OUTER APPLY (
			SELECT TOP (@take)
				[x].[Value] as [LastCheck]
			FROM
				(
					SELECT 'fc5cf3ad-d165-4d4f-9713-80b917b5c690' AS [Key], CAST('2024-01-26T08:45:46.331' AS DATETIME) AS [Value]
					UNION ALL
					SELECT '78fcd1af-ede6-4164-bb3f-cb542aa4a8da', CAST('2024-01-26T08:45:46.332' AS DATETIME)
					UNION ALL
					SELECT '15850324-08d6-404b-8813-a217fa8cd1cf', CAST('2024-01-26T08:45:46.332' AS DATETIME)) [x]
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(
					SELECT '0fd6cf6b-aaa6-4bd3-af85-aac584308fea' AS [Key], CAST('2024-01-26T08:45:46.332' AS DATETIME) AS [Value]
					UNION ALL
					SELECT '56f4dbc8-f888-4d6f-a8c1-3f18bb5c65dc', CAST('2024-01-26T08:45:46.332' AS DATETIME)) [x_1]
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


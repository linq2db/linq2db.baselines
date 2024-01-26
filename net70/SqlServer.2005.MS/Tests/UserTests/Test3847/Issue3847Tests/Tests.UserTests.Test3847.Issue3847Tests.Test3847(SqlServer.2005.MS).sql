BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
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
					SELECT '294cec03-1939-4cee-9ba7-8fa9b189885c' AS [Key], CAST('2024-01-26T08:45:46.363' AS DATETIME) AS [Value]
					UNION ALL
					SELECT '7bf9faed-5d21-437f-b1a4-7b7d9fc07230', CAST('2024-01-26T08:45:46.363' AS DATETIME)
					UNION ALL
					SELECT '18459dc2-5fc1-47c2-8597-1ac07d2f19ba', CAST('2024-01-26T08:45:46.363' AS DATETIME)) [x]
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(
					SELECT '8c568dd7-5527-47b3-8c07-bf58c5e7f516' AS [Key], CAST('2024-01-26T08:45:46.363' AS DATETIME) AS [Value]
					UNION ALL
					SELECT 'cbec306d-922c-4d81-9415-aabaae9ae25f', CAST('2024-01-26T08:45:46.363' AS DATETIME)) [x_1]
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


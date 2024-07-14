BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
						('32b2337f-a0ab-4797-a378-9e4ec20f89f6',CAST('2024-07-14T18:35:48.7238444' AS DATETIME2)),
						('26b43d6f-ae05-4a22-b830-c87acf2912c6',CAST('2024-07-14T18:35:48.7238491' AS DATETIME2)),
						('c11f0d47-025f-489d-a0c5-bc89e92bb768',CAST('2024-07-14T18:35:48.7238507' AS DATETIME2))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('24cd4564-d80e-497d-b809-1a5269422ef2',CAST('2024-07-14T18:35:48.7238510' AS DATETIME2)),
						('dfb8c844-4dad-4edf-bef4-d98d0f8938f2',CAST('2024-07-14T18:35:48.7238513' AS DATETIME2))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


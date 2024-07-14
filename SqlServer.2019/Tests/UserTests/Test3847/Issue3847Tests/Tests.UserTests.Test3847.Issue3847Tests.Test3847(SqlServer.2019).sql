BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2019
DECLARE @p DateTime2
SET     @p = NULL
DECLARE @p_1 DateTime2
SET     @p_1 = NULL

SELECT
	[t3].[Id],
	IIF([t3].[Value_1] IS NOT NULL, [t3].[Value_1], @p),
	IIF([t3].[Value_1_1] IS NOT NULL, [t3].[Value_1_1], @p_1)
FROM
	(
		SELECT
			[outfeed].[Id],
			(
				SELECT TOP (1)
					[t1].[Value]
				FROM
					(VALUES
						('ffef18ae-6c44-4c81-9fe0-e228c36b1e18',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 5990937, 7)),
						('b77a567f-c2d8-40e3-978a-293915317338',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 5990937, 7)),
						('f8263ed2-ed89-430b-81a7-550117c1ca7d',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 5990937, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('54d2390e-922b-410b-b2f8-c538215dbfd2',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 5990937, 7)),
						('bb889f54-8592-4847-90d4-11cc4bf320e6',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 5990937, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


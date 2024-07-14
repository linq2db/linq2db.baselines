BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
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
						('3b43af36-ecfb-42d6-900f-01a17878a272',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 51, 167547, 7)),
						('b58f328b-2e44-45c4-8ac5-be5365a69e33',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 51, 167569, 7)),
						('fcd946d1-a704-4cdd-a838-c3bf07a97039',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 51, 167572, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('c48561e9-ed4f-4f8c-90b8-e2daeb046414',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 51, 167574, 7)),
						('a866d01d-2888-4c30-b9c7-8158d1847392',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 51, 167578, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


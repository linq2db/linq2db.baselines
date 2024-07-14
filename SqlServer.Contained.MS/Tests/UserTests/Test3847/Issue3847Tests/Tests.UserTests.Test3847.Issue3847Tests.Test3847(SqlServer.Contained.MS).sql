BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
						('cf67aba9-61fb-4714-9994-7c4e3673483e',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 7066359, 7)),
						('c2a54520-7ac7-400b-88fb-a18522fcc907',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 7066359, 7)),
						('d57ade92-02c7-4259-98d0-b174b0545a7d',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 7066359, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('291630f2-6365-4e81-ada5-5a44006e4d73',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 7066359, 7)),
						('2c6798b5-429f-4b01-a8e9-657bd5c540e3',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 7066359, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


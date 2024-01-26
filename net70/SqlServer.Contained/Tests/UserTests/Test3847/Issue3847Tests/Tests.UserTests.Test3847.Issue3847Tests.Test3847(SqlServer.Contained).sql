BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
				(VALUES
					('66aa54cc-c3a5-4c01-8300-6fb58f9ebad5',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9180925, 7)),
					('744b382f-463c-4fef-aa3f-280ebb1dcc12',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9180940, 7)),
					('752561df-6f13-4707-85ab-18c13accd137',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9180942, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('0eed4dcc-ea06-4b0b-999a-b80328d2ff88',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9180944, 7)),
					('e5e84d8b-754a-4026-9233-577661261d55',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 9180956, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


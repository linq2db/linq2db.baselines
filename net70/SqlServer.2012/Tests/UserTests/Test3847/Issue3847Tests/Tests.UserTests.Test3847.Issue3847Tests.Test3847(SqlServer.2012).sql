BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2012
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
					('fbd9bca8-4f7c-4231-931e-349d7a4d50cf',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7114372, 7)),
					('bf1a563f-d0e3-4200-b57d-f14ca7f2b2b4',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7122806, 7)),
					('97d74386-cce3-405e-9e04-8a32c98627fb',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7122813, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('6ecdcfb5-2316-4d78-aade-f98ce776ef3c',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7122816, 7)),
					('2dd5d795-ea98-4fd3-b492-f6fb5816d67a',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7122831, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


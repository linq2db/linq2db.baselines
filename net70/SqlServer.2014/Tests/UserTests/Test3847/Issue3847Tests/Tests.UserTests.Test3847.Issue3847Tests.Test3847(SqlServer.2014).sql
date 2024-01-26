BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014
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
					('ea2db34c-634f-43df-9b00-08e8b4b8238a',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 146790, 7)),
					('2154fd0e-d3ad-42bd-9976-92d822e49520',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 155952, 7)),
					('e4ded718-d344-4268-bde6-30f968d5171e',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 155966, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('1884d6f5-2362-4d10-a2b7-ced7e7df1021',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 155968, 7)),
					('1b71c5a0-f73a-465a-8ed9-85035af8f254',DATETIME2FROMPARTS(2024, 1, 26, 9, 7, 16, 155972, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


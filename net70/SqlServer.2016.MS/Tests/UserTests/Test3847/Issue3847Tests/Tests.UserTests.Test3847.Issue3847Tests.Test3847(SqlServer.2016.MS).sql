BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
					('df535d4c-d911-4e43-bba4-2fe4300bd93b',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6506024, 7)),
					('ccbb666d-3855-457a-9b33-ea5c84d68f8d',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6506041, 7)),
					('bbe90a87-e1d7-416d-8085-6e5953d75750',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6506043, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('46428898-5652-479a-8649-133fd52e42d3',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6506046, 7)),
					('d712b296-ebde-4ec8-a961-9a298c3b73a6',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6506049, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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
					('c706ad50-3c39-436b-bdf5-82c532485120',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8457455, 7)),
					('8c28a7ba-134f-4e39-a64a-1da74d4fb987',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8457475, 7)),
					('cecacd1d-5190-4092-bcd6-a44c77c508d0',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8457486, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('ffe6e8bc-7565-483a-884e-f6fc4799aeae',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8457496, 7)),
					('d9fe479f-2d66-4ce5-a64f-9fe1bdbe010f',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8457506, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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
					('1da47162-4e5b-4bcc-852d-98f215a94287',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4479221, 7)),
					('e93d711e-1a63-4430-a66a-c79e40fda1f1',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4479246, 7)),
					('86e0eeb6-b739-4bde-8c1e-94afbb2fa960',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4479248, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('826040e0-3bc6-4af8-8562-c2db01fedca9',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4479252, 7)),
					('631878ee-3dcb-4952-903d-45a1c1a414dc',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4479254, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


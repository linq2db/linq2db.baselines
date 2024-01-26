BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
					('91582d05-7a70-4a70-af40-631e05d31096',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7544098, 7)),
					('91aa437a-c761-4c5b-b85d-f5f8d572dfb9',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7544113, 7)),
					('44133a8e-2b5a-4bd9-af25-f6554f57ca69',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7544116, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('cc2a1797-7be3-4a85-ba30-6b9c50d4165d',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7544118, 7)),
					('dabb7631-2179-4d71-9a86-46985d822608',DATETIME2FROMPARTS(2024, 1, 26, 9, 5, 31, 7544121, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


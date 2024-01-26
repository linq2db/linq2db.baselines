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
					('fa669810-1295-45fd-9a05-40e51e094f66',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 661348, 7)),
					('09cef4fc-3bdd-43ce-a28b-7f05b4076af4',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 670906, 7)),
					('aeecd508-66f6-4580-8b53-b24bbab584c7',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 670910, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('411dd9c6-cf81-44d7-a054-2c699e04157e',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 670915, 7)),
					('69682723-ca0c-47d6-b11d-d18ec880dec1',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 670918, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


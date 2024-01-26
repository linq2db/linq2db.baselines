BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017
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
					('92a4d069-d519-4172-b7e0-f4df0276f166',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 3987616, 7)),
					('f02e22bc-aca1-46be-8e39-e6ca83c786b2',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 3996803, 7)),
					('58487de1-40be-49fe-af55-5e854152d9ff',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 3996817, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('cadd9b37-060f-4f54-9f43-5663ad770207',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 3996829, 7)),
					('5a4aa47a-e17b-47a1-8f02-cd63e6e8609a',DATETIME2FROMPARTS(2024, 1, 26, 10, 8, 39, 3996841, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


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
					('705455df-de39-4e62-91a9-6e2a182656ec',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7531506, 7)),
					('ea01eb97-4122-449e-bd87-b49dab41f3ab',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7531531, 7)),
					('12ce0f1c-a634-44a7-966e-3371f3c3e87a',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7531542, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('be9fa8ba-19e7-4e54-9da5-cf18c49d2644',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7531552, 7)),
					('93ac598e-c8a5-4586-994c-2d21ed8cba92',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7531563, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


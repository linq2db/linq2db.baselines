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
					('70506620-449b-4112-a9c9-b29c5b695885',DATETIME2FROMPARTS(2024, 1, 26, 9, 31, 54, 9776320, 7)),
					('6025c7bb-f3e1-4c25-85ee-93a7728b33b8',DATETIME2FROMPARTS(2024, 1, 26, 9, 31, 54, 9776320, 7)),
					('4c470357-d92b-42ce-b89e-a6dc25bd5c00',DATETIME2FROMPARTS(2024, 1, 26, 9, 31, 54, 9776320, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('5dcc31e9-35ab-474a-a953-1e06b65eec98',DATETIME2FROMPARTS(2024, 1, 26, 9, 31, 54, 9776320, 7)),
					('70c85e16-3d6d-47ff-a042-2947a485066b',DATETIME2FROMPARTS(2024, 1, 26, 9, 31, 54, 9776320, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2022
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
					('ccab73fb-0c1c-4e55-add5-f1ac99f4dfd8',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7183454, 7)),
					('de4de601-215d-4aee-9c73-fcb9487788ed',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7192886, 7)),
					('8cc913be-5330-4303-ac77-68a5091b3ca5',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7192899, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('e49f52e6-1455-4229-b85c-635f206cdad5',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7192910, 7)),
					('55fb0198-edf8-4f21-8eb5-c00706655e00',DATETIME2FROMPARTS(2024, 1, 26, 10, 14, 19, 7192922, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


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
					('13c6be81-54db-4d94-ac39-9dbed26de90c',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4062552, 7)),
					('a5b76c4f-49d3-421a-a845-ecec157830ee',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4072451, 7)),
					('dad79dfd-9e32-4e8a-985c-5ea59a836030',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4072455, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('bb67338d-187b-4a6e-a2fd-113654f269ea',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4072458, 7)),
					('bf822473-ac14-4cc3-bc7b-2c6e746a044a',DATETIME2FROMPARTS(2024, 1, 26, 9, 41, 12, 4072461, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


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
					('ec0adc21-0b44-435d-afbf-d72070b6f0c3',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 1034960, 7)),
					('c5ffc2c1-f5ee-433c-97de-d6852229fb8d',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 1034975, 7)),
					('df2549a0-29ce-4c62-880a-76f1d2618270',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 1034977, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('b2e030ad-0fe2-4c4a-88f0-1346af06a74f',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 1034980, 7)),
					('d3b733df-444e-4dd2-add8-73ef6b73894a',DATETIME2FROMPARTS(2024, 1, 26, 9, 29, 46, 1034996, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


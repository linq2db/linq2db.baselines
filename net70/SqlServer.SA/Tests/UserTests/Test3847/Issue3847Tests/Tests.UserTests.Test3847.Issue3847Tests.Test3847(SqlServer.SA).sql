BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
					('65707057-2775-42fd-89f7-754257c44b52',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8667052, 7)),
					('c3d2acb6-eab9-43ac-a50f-370e20c07bc4',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8675690, 7)),
					('daa7bdc0-61b0-46c8-9a44-28dccf5131db',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8675694, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('5eb8f21d-f62c-4e72-8744-db5b313e9db3',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8675697, 7)),
					('4929298b-41b9-47ad-bc80-a35f8e4e13af',DATETIME2FROMPARTS(2024, 1, 26, 9, 35, 56, 8675700, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


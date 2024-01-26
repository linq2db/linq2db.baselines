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
					('f504575a-f3fe-4a88-be33-c07c1f516544',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8082871, 7)),
					('62106bac-e5c4-4f6c-960b-0f542f463830',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8092678, 7)),
					('3837d666-63d7-4f7f-9924-e7eae8f12a3d',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8092689, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('9a21c34c-3c5f-4d9f-8106-3964dd637977',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8092699, 7)),
					('86f140af-d7ed-49f4-883f-303cef638d44',DATETIME2FROMPARTS(2024, 1, 26, 10, 24, 32, 8092712, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2016
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
					('48c967cf-7a82-416e-ae7e-1cdd985d43b7',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6047339, 7)),
					('f0aae46e-1843-499d-b537-e71e8a2db027',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6058236, 7)),
					('26739a69-3990-4732-a1ca-0c22460d1c4d',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6058242, 7))
				) [x]([Key], [Value])
			WHERE
				[x].[Key] = [outfeed].[Id]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x_1].[Value] as [NextCheck]
			FROM
				(VALUES
					('6cca53ee-e1c4-454f-b982-16a0aeae216c',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6058247, 7)),
					('5e3694c7-a906-432e-b54c-bfa26985bff9',DATETIME2FROMPARTS(2024, 1, 26, 9, 30, 19, 6058295, 7))
				) [x_1]([Key], [Value])
			WHERE
				[x_1].[Key] = [outfeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


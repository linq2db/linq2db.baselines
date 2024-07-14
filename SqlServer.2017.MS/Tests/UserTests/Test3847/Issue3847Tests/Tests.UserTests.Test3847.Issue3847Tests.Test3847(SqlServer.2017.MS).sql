BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p DateTime2
SET     @p = NULL
DECLARE @p_1 DateTime2
SET     @p_1 = NULL

SELECT
	[t3].[Id],
	IIF([t3].[Value_1] IS NOT NULL, [t3].[Value_1], @p),
	IIF([t3].[Value_1_1] IS NOT NULL, [t3].[Value_1_1], @p_1)
FROM
	(
		SELECT
			[outfeed].[Id],
			(
				SELECT TOP (1)
					[t1].[Value]
				FROM
					(VALUES
						('aa93f4cb-8331-4dea-9bf4-eb3f95674bca',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 7264395, 7)),
						('c75935c6-7a17-4c95-992a-55db3f195e6f',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 7264421, 7)),
						('d487a461-2474-4b6a-918e-fce815e93afd',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 7264432, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('79c303a0-9570-4a18-8bc0-523d6d85b306',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 7264443, 7)),
						('379f849e-25c0-4d01-9af1-844252d14de0',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 7264453, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


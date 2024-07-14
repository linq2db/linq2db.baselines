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
						('0f5de996-0ab4-4ba3-9d44-89e68d2ea1d4',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6663204, 7)),
						('43ae939c-e443-4531-b838-cc82140dda5c',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6678769, 7)),
						('da24dbc0-6e23-41d4-8610-af49875bcabc',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6678782, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('ff1a9582-a585-4b61-b38d-07f3fa6480f6',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6678792, 7)),
						('863da3a4-967b-41ce-a167-0476cb394eed',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6678804, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
						('e16233d9-772b-4ba9-8fe8-5c9a6a4cf789',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 2101222, 7)),
						('a4ba4630-dc9c-408b-80e5-82f2b715c67b',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 2101249, 7)),
						('27bb5a5d-61f3-44df-9c51-9f3b70cb752a',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 2101252, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('093a6bad-f467-472e-9598-97f116c85acf',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 2101255, 7)),
						('eff2dd9e-7bb6-4869-b8d0-97354e70b9b8',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 2101259, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


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
						('d926af19-bd6d-4523-97bb-8f979ccdd514',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2195410, 7)),
						('9348c15b-6b6a-4ecc-8a22-8cdf8bcc63d1',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2206363, 7)),
						('74c4e3b3-79c2-4554-8327-22ac4ade3ee7',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2206369, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('d5d4b089-06cb-40c0-9bb1-f01f54ec317d',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2206372, 7)),
						('36ed6d20-cba2-4bba-b86d-a9ce4ca8d901',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2206376, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


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
						('66ac5ad7-b092-44b5-9d03-6ab19f26a75d',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 6459843, 7)),
						('0000825c-1d15-4e67-a912-f8d11440469c',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 6459843, 7)),
						('c0a539a0-c932-4095-b60e-b57d89a92acf',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 6459843, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('9753e2dd-afbc-45b8-a9e8-ebecc83cbf6d',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 6459843, 7)),
						('aa69b2eb-f42b-449d-acf6-5492122c39a3',DATETIME2FROMPARTS(2024, 7, 14, 18, 8, 46, 6459843, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


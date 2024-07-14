BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
						('ec77310b-a1e5-4788-a569-31fe98406f85',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5652922, 7)),
						('b5664b90-065c-480b-90b2-ca8927d667d4',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5652943, 7)),
						('0e10df7b-f2b4-4e7a-98fc-22b10dccb500',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5652947, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('22d5320d-c628-40cf-baa2-dd07a4f34eb6',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5652969, 7)),
						('147dd162-8fec-4353-a24c-de2b9b6fb8ff',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5652972, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


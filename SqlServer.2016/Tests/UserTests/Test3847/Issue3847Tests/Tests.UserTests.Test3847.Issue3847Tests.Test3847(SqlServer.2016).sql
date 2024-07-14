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
						('2fa19606-359b-494f-a89e-6d439b7c80dc',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 1662790, 7)),
						('9fafc7f9-96a4-4520-9c2b-46eaa009dfa0',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 1673873, 7)),
						('38f96677-c4d0-46da-98c3-d33063666072',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 1673904, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('1890ee5f-e194-474d-8ad3-93bc8afc8e03',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 1673908, 7)),
						('8520dcf0-8419-4df7-8266-bcbe2d34e8a7',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 0, 1673913, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


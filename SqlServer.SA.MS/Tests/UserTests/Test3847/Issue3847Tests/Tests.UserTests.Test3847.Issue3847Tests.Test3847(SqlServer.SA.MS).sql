BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
						('64110709-f90f-4857-b748-ed05ebb36b83',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6942664, 7)),
						('87bb026e-fbaf-4c70-9b46-d8fa186c4022',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6942680, 7)),
						('506c3d26-6f25-4f17-8d10-eb7f33198c98',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6942691, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('37e7b978-7ebe-4310-bb5a-fc2198c3cc58',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6942702, 7)),
						('4a564fda-72f0-42ae-bce3-f46e8a2d83c4',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 43, 6942714, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


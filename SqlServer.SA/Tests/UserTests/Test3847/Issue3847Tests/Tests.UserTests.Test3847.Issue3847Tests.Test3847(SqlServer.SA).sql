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
						('3a6ca2d1-5083-4bce-87a1-fc09eac0ae17',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 5814914, 7)),
						('18d2ca0f-380f-467c-b9ae-2d997a7c7fda',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 5814914, 7)),
						('a2f97b8d-0181-4d70-922e-9b0478fb4e3f',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 5814914, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('4881f13b-fb02-40a2-b53b-c0a0d13539a2',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 5814914, 7)),
						('99f162c1-c3ec-4903-bf34-333bcf4a8e0d',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 5814914, 7))
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


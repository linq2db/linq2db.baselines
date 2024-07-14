BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2012
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
						('dd2bbef6-53ca-4adc-a0a6-ec06140aa455',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5293534, 7)),
						('8047a02e-4950-4c2c-93e5-aa9d019743e8',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5302289, 7)),
						('abf6b660-97e4-4b1c-9bf5-fe39b4193324',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5302293, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('494da7b9-4bcd-4441-8276-b3787586a02f',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5302296, 7)),
						('af4a07ae-648b-451a-a446-91ff214df82d',DATETIME2FROMPARTS(2024, 7, 14, 18, 29, 27, 5302299, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


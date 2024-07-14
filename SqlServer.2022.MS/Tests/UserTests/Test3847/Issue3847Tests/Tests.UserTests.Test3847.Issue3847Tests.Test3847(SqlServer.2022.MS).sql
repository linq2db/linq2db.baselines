BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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
						('9cd38216-7113-4dfe-b52c-e93587f53bd1',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2551209, 7)),
						('ba6ffdf3-7f8c-42a2-8b1d-58d3004277b6',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2551231, 7)),
						('2dd9f7ae-bca8-4a1f-9c9d-39c3ede04b90',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2551233, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('4b14cd0f-2dcb-40d0-9ec2-266710c911b7',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2551237, 7)),
						('b3dd3541-6e71-4bd7-bdf1-a68a45f86640',DATETIME2FROMPARTS(2024, 7, 14, 19, 1, 45, 2551240, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


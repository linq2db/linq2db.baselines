BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2017
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
						('41fed8d3-4fbd-488d-aa33-26eb54dc4bce',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 6989347, 7)),
						('9a823d9b-d57c-48ea-b7da-f630cc432d7e',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 6997805, 7)),
						('211fbd4f-864c-41bf-a5a3-1c3ffb903e53',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 6997817, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('56615a68-1a66-4909-9582-127b54fff7f6',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 6997828, 7)),
						('17197081-8138-4640-944b-8bbfff4b90c5',DATETIME2FROMPARTS(2024, 7, 14, 19, 34, 27, 6997839, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Test3847_OutfeedTransportOrder]


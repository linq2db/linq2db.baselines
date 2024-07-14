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
						('194a2311-71c1-46f7-9001-a9c0436077a5',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 42, 62297, 7)),
						('afa8e334-f6f6-4597-8459-f8f734c61671',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 42, 62321, 7)),
						('d2ff7ae0-7f09-486a-b0fc-c97af5c6f2ba',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 42, 62332, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('0dce3694-439a-4393-a6ec-18b3970f8a00',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 42, 62342, 7)),
						('064eb86b-b8b9-43df-b5bf-099d79bc4609',DATETIME2FROMPARTS(2024, 7, 14, 19, 38, 42, 62352, 7))
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


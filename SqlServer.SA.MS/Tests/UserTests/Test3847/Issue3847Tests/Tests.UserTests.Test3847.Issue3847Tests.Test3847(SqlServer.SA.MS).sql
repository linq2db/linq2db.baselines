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
						('ced67a12-8b80-48f6-9449-f1cb7a12db7c',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6441352, 7)),
						('1734c47b-ca31-4841-88e2-859a3418fbd8',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6441352, 7)),
						('72ec01b8-892e-4d9d-b617-972640ed8ad7',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6441352, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('ffc910fc-182b-4387-ae8b-ad71ac52b2a9',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6441352, 7)),
						('18bf3b03-5add-4f12-b545-c696e62172cf',DATETIME2FROMPARTS(2024, 7, 14, 18, 41, 51, 6441352, 7))
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


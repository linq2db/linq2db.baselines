BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2014
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
						('754873a7-4e97-43c2-9ef1-a566de775a02',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 50, 9781059, 7)),
						('c8b852e1-718b-4cb3-8f41-e6e351fd516e',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 50, 9792444, 7)),
						('a3fcc68b-755c-4afe-b4fe-425a21b1337e',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 50, 9792451, 7))
					) [t1]([Key], [Value])
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(VALUES
						('a4176185-1d74-4326-a66b-243b1066bd6a',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 50, 9792454, 7)),
						('57c76cf3-3535-4274-975f-1365725864ee',DATETIME2FROMPARTS(2024, 7, 14, 18, 34, 50, 9792459, 7))
					) [t2]([Key], [Value])
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


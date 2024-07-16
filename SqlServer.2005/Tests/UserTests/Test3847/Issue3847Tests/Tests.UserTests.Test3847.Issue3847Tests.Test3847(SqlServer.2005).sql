BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NULL)
	CREATE TABLE [Test3847_OutfeedTransportOrder]
	(
		[Id] UniqueIdentifier NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @p DateTime
SET     @p = NULL
DECLARE @p_1 DateTime
SET     @p_1 = NULL

SELECT
	[t3].[Id],
	CASE
		WHEN [t3].[Value_1] IS NOT NULL THEN [t3].[Value_1]
		ELSE @p
	END,
	CASE
		WHEN [t3].[Value_1_1] IS NOT NULL THEN [t3].[Value_1_1]
		ELSE @p_1
	END
FROM
	(
		SELECT
			[outfeed].[Id],
			(
				SELECT TOP (1)
					[t1].[Value]
				FROM
					(
						SELECT 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11' AS [Key], CAST('2020-02-29T17:54:55.123' AS DATETIME) AS [Value]
						UNION ALL
						SELECT 'a948600d-de21-4f74-8ac2-9516b287076e', CAST('2020-02-29T17:54:55.123' AS DATETIME)
						UNION ALL
						SELECT 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627', CAST('2020-02-29T17:54:55.123' AS DATETIME)) [t1]
				WHERE
					[t1].[Key] = [outfeed].[Id]
			) as [Value_1],
			(
				SELECT TOP (1)
					[t2].[Value]
				FROM
					(
						SELECT '76b1c875-2287-4b82-a23b-7967c5eafed8' AS [Key], CAST('2020-02-29T17:54:55.123' AS DATETIME) AS [Value]
						UNION ALL
						SELECT '656606a4-6e36-4431-add6-85f886a1c7c2', CAST('2020-02-29T17:54:55.123' AS DATETIME)) [t2]
				WHERE
					[t2].[Key] = [outfeed].[Id]
			) as [Value_1_1]
		FROM
			[Test3847_OutfeedTransportOrder] [outfeed]
	) [t3]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Test3847_OutfeedTransportOrder]', N'U') IS NOT NULL)
	DROP TABLE [Test3847_OutfeedTransportOrder]


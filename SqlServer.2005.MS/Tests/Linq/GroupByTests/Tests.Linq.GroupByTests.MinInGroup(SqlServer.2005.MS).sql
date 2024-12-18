BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NULL)
	CREATE TABLE [AggregationData]
	(
		[GroupId]   Int   NOT NULL,
		[DataValue] Float     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
SELECT 1,1 UNION ALL
SELECT 1,NULL UNION ALL
SELECT 1,3 UNION ALL
SELECT 1,1 UNION ALL
SELECT 1,5 UNION ALL
SELECT 1,6 UNION ALL
SELECT 2,7 UNION ALL
SELECT 2,8 UNION ALL
SELECT 2,9 UNION ALL
SELECT 2,NULL UNION ALL
SELECT 2,11 UNION ALL
SELECT 2,7 UNION ALL
SELECT 3,13 UNION ALL
SELECT 3,16 UNION ALL
SELECT 3,16 UNION ALL
SELECT 3,16 UNION ALL
SELECT 3,NULL UNION ALL
SELECT 3,18

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[g_1].[GroupId],
	MIN([g_1].[DataValue]),
	MIN([g_1].[DataValue]),
	MIN(CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	MIN(CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	MIN(DISTINCT [g_1].[DataValue]),
	MIN(DISTINCT CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END),
	MIN(DISTINCT CASE
		WHEN (Convert(Int, [g_1].[DataValue]) % 2) = 0 AND [g_1].[DataValue] IS NOT NULL
			THEN [g_1].[DataValue]
		ELSE NULL
	END)
FROM
	[AggregationData] [g_1]
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]


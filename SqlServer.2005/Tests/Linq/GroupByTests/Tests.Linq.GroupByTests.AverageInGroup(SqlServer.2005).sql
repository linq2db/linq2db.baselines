BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NULL)
	CREATE TABLE [AggregationData]
	(
		[GroupId]   Int   NOT NULL,
		[DataValue] Float     NULL
	)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

SELECT
	[t].[GroupId],
	AVG([t].[DataValue]),
	AVG([t].[DataValue]),
	AVG(CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	AVG(CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	CAST(AVG(DISTINCT [t].[DataValue]) AS Decimal(38, 17)),
	AVG(DISTINCT CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN [t].[DataValue]
		ELSE NULL
	END),
	AVG(DISTINCT CASE
		WHEN (Convert(Int, [t].[DataValue]) % 2) = 0 THEN [t].[DataValue]
		ELSE NULL
	END)
FROM
	[AggregationData] [t]
WHERE
	[t].[DataValue] IS NOT NULL
GROUP BY
	[t].[GroupId]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]


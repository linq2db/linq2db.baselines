BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NULL)
	CREATE TABLE [AggregationData]
	(
		[GroupId]   Int   NOT NULL,
		[DataValue] Float     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [AggregationData]
(
	[GroupId],
	[DataValue]
)
VALUES
(1,1),
(1,NULL),
(1,3),
(1,1),
(1,5),
(1,6),
(2,7),
(2,8),
(2,9),
(2,NULL),
(2,11),
(2,7),
(3,13),
(3,16),
(3,16),
(3,16),
(3,NULL),
(3,18)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]


BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NULL)
	CREATE TABLE [AggregationData]
	(
		[GroupId]   Int   NOT NULL,
		[DataValue] Float     NULL
	)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

SELECT
	[g_1].[GroupId],
	MAX([g_1].[DataValue]),
	MAX([g_1].[DataValue]),
	MAX(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0 AND [g_1].[DataValue] IS NOT NULL, [g_1].[DataValue], NULL)),
	MAX(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0 AND [g_1].[DataValue] IS NOT NULL, [g_1].[DataValue], NULL)),
	MAX(DISTINCT [g_1].[DataValue]),
	MAX(DISTINCT IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0 AND [g_1].[DataValue] IS NOT NULL, [g_1].[DataValue], NULL)),
	MAX(DISTINCT IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0 AND [g_1].[DataValue] IS NOT NULL, [g_1].[DataValue], NULL))
FROM
	[AggregationData] [g_1]
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AggregationData]', N'U') IS NOT NULL)
	DROP TABLE [AggregationData]


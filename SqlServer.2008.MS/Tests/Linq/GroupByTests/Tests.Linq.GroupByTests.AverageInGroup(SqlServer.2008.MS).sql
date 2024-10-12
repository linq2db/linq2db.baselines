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

